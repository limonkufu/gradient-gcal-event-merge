import { readFileSync, readdirSync, statSync } from 'node:fs';
import { extname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const projectDirectory = fileURLToPath(new URL('..', import.meta.url));
const readJson = (relativePath) => JSON.parse(
  readFileSync(join(projectDirectory, relativePath), 'utf8')
);

const errors = [];
const check = (condition, message) => {
  if (!condition) {
    errors.push(message);
  }
};

const manifest = readJson('manifest.json');
const packageMetadata = readJson('package.json');
check(manifest.manifest_version === 3, 'manifest_version must be 3.');
check(
  packageMetadata.version === manifest.version,
  'package.json and manifest.json versions must match.'
);
check(
  manifest.background?.service_worker === 'background.js',
  'Manifest V3 must use background.service_worker.'
);
check(
  JSON.stringify(manifest.permissions) === JSON.stringify(['storage']),
  'Only the storage API permission should be requested.'
);
check(
  !Object.hasOwn(manifest, 'host_permissions'),
  'host_permissions is unnecessary for this static content script.'
);
check(
  JSON.stringify(manifest.content_scripts?.[0]?.matches) === JSON.stringify(['https://calendar.google.com/*']),
  'Content script access must remain limited to the Google Calendar HTTPS origin.'
);
check(
  manifest.content_security_policy?.extension_pages === "script-src 'self'; object-src 'self'",
  'Extension pages must allow only packaged scripts.'
);
check(
  typeof manifest.short_name === 'string' && manifest.short_name.length <= 12,
  'short_name should be no more than 12 characters.'
);

const referencedFiles = new Set([
  manifest.background?.service_worker,
  manifest.action?.default_popup,
  ...Object.values(manifest.action?.default_icon || {}),
  ...Object.values(manifest.icons || {}),
  ...(manifest.content_scripts || []).flatMap(({ js = [], css = [] }) => [...js, ...css])
]);

for (const relativePath of referencedFiles) {
  if (!relativePath) {
    continue;
  }

  try {
    check(statSync(join(projectDirectory, relativePath)).isFile(), `${relativePath} must be a file.`);
  } catch {
    errors.push(`Manifest references missing file: ${relativePath}`);
  }
}

const localeDirectory = join(projectDirectory, '_locales');
const englishMessages = readJson('_locales/en/messages.json');
const englishKeys = Object.keys(englishMessages).sort();
for (const locale of readdirSync(localeDirectory)) {
  const relativePath = `_locales/${locale}/messages.json`;
  const messages = readJson(relativePath);
  check(
    JSON.stringify(Object.keys(messages).sort()) === JSON.stringify(englishKeys),
    `${relativePath} must contain the same message keys as the default locale.`
  );
}

for (const manifestValue of [manifest.name, manifest.description]) {
  const match = /^__MSG_([A-Za-z0-9_@]+)__$/.exec(manifestValue || '');
  check(Boolean(match), `Manifest value ${manifestValue} must use a localized message.`);
  if (match) {
    check(Boolean(englishMessages[match[1]]), `Missing default locale message: ${match[1]}`);
  }
}

const sourceFiles = ['background.js', 'events.user.js', 'popup.html', 'popup.js'];
const remoteCodePatterns = [
  /<script\b[^>]+src=["']https?:\/\//i,
  /\bimport\s*\(\s*["']https?:\/\//i,
  /\beval\s*\(/,
  /\bnew\s+Function\s*\(/
];

for (const relativePath of sourceFiles) {
  const source = readFileSync(join(projectDirectory, relativePath), 'utf8');
  for (const pattern of remoteCodePatterns) {
    check(!pattern.test(source), `${relativePath} contains disallowed remote or dynamic code.`);
  }
}

const requiredStoreImages = new Map([
  ['icon-large.png', [128, 128]],
  ['images/examples.png', [1280, 800]],
  ['images/small-tile.png', [440, 280]],
  ['images/marquee.png', [1400, 560]]
]);

for (const [relativePath, [expectedWidth, expectedHeight]] of requiredStoreImages) {
  const image = readFileSync(join(projectDirectory, relativePath));
  const isPng = extname(relativePath) === '.png'
    && image.subarray(1, 4).toString('ascii') === 'PNG';
  check(isPng, `${relativePath} must be a PNG image.`);
  if (isPng) {
    check(
      image.readUInt32BE(16) === expectedWidth && image.readUInt32BE(20) === expectedHeight,
      `${relativePath} must be ${expectedWidth}x${expectedHeight}px.`
    );
  }
}

if (errors.length) {
  for (const error of errors) {
    console.error(`- ${error}`);
  }
  process.exitCode = 1;
} else {
  console.log('Extension validation passed.');
}
