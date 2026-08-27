#!/usr/bin/env bash

set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DIST_DIR="${PROJECT_DIR}/dist"

cd "${PROJECT_DIR}"

for command in jq node zip; do
  if ! command -v "${command}" >/dev/null 2>&1; then
    echo "Required build command not found: ${command}" >&2
    exit 1
  fi
done

node scripts/validate.mjs

VERSION="$(jq -r '.version' manifest.json)"
echo "Building Gradient Merge ${VERSION}"

rm -rf "${DIST_DIR}"
mkdir -p "${DIST_DIR}/chrome" "${DIST_DIR}/firefox"

FILES=(
  manifest.json
  events.user.js
  background.js
  popup.html
  popup.js
  icon.png
  icon-disabled.png
  icon-large.png
  _locales
)

for file in "${FILES[@]}"; do
  cp -R "${file}" "${DIST_DIR}/chrome/"
  cp -R "${file}" "${DIST_DIR}/firefox/"
done

jq '
  .background = {"scripts": ["background.js"]}
  | .browser_specific_settings = {
      "gecko": {
        "id": "gcal-multical-event-merge@limonkufu.com",
        "strict_min_version": "109.0"
      }
    }
' manifest.json > "${DIST_DIR}/firefox/manifest.json"

(
  cd "${DIST_DIR}/chrome"
  zip -q -r "../gradient-merge-chrome-v${VERSION}.zip" . -x '*.DS_Store'
)

(
  cd "${DIST_DIR}/firefox"
  zip -q -r "../gradient-merge-firefox-v${VERSION}.zip" . -x '*.DS_Store'
)

echo "Created dist/gradient-merge-chrome-v${VERSION}.zip"
echo "Created dist/gradient-merge-firefox-v${VERSION}.zip"
