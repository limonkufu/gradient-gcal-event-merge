# Chrome Web Store release copy and checklist

The dashboard, public privacy policy, store listing, and packaged behavior must remain consistent. Re-check this document whenever data handling, permissions, or visible functionality changes.

## Listing

### Title

```text
Gradient Merge for Google Calendar™
```

### Summary

```text
Visually merge duplicate Google Calendar events into one gradient block and optionally highlight weekends.
```

### Detailed description

```text
See schedule conflicts at a glance when the same event appears on multiple calendars. Gradient Merge combines duplicate events already visible in Google Calendar into one gradient block while preserving each calendar's color.

Features:
• Merge duplicate visible events into a color gradient
• Adjust gradient opacity
• Optionally highlight weekends
• Choose light, dark, or system-aware weekend colors
• Sync visual preferences through browser storage

Privacy: To identify duplicate events, the extension processes rendered event label text, colors, and layout locally in the current Google Calendar tab. Calendar content is never stored or transmitted. The extension has no analytics, ads, tracking, or developer-operated external servers. Visual preferences may be synced by Chrome according to the user's Chrome Sync settings.

Google Calendar is a trademark of Google LLC. Use of this trademark is subject to Google Permissions. This extension is independently developed and is not affiliated with or endorsed by Google.
```

### Category

`Productivity`

### Suggested URLs

- Homepage: `https://github.com/limonkufu/gradient-gcal-event-merge`
- Support: `https://github.com/limonkufu/gradient-gcal-event-merge/issues`
- Privacy policy: use a publicly hosted rendering of `PRIVACY.md`, for example `https://github.com/limonkufu/gradient-gcal-event-merge/blob/master/PRIVACY.md`

## Single purpose

```text
This extension improves the visual presentation of Google Calendar by combining duplicate visible events into a gradient and highlighting weekends with user-selected colors.
```

## Permission and site-access justifications

### Google Calendar site access

```text
The packaged content script runs only on https://calendar.google.com/*. This access is required to find duplicate events already rendered in the current Calendar view, combine their visible colors into a gradient, and optionally highlight weekends. Calendar page content is processed only in memory in the current tab and is never stored or transmitted.
```

The manifest intentionally does not declare `host_permissions`; static `content_scripts.matches` supplies the narrowly scoped site access needed by this feature.

### `storage`

```text
The storage permission saves the user's enabled state, weekend-highlighting choice, gradient opacity, theme, and custom colors with chrome.storage.sync. These preferences may sync through Chrome according to the user's Chrome Sync settings. Calendar event content is never written to storage.
```

## Privacy practices tab

Do not select a blanket statement that the extension does not use user data: Google policy treats local page-content processing as data handling.

### Data type

Select **Website content** and describe it as follows:

```text
The extension temporarily processes rendered Google Calendar event label text (including the title and any time or label fragments present in the event element), colors, positions, dates, and weekday headings in the current tab. This is strictly necessary to identify duplicate visible events, draw their merged gradient, and optionally highlight weekends. Calendar content is not retained, written to storage, transmitted, or made available to the developer or any third party.
```

Also disclose the non-sensitive visual preferences saved through `storage.sync` in the listing and privacy policy. Do not claim that sync preferences stay only on the device, because Chrome may sync them through the user's Google account.

### Limited Use certification

Certify only while all of these remain true:

- Data use is limited to the disclosed event-merging and weekend-highlighting purpose.
- No Calendar content is sold or transferred.
- No Calendar content is used for advertising, profiling, creditworthiness, or lending.
- Humans cannot access Calendar content.
- The public privacy policy is accurate and linked in the dashboard.

Limited Use statement for the public privacy page:

```text
Gradient Merge's use of information obtained from Google Calendar complies with the Chrome Web Store User Data Policy, including the Limited Use requirements. Information is used only to provide or improve the extension's disclosed single purpose. It is not transferred for advertising, profiling, creditworthiness, lending, or any unrelated purpose, and humans are not allowed to read it.
```

## Remote code

```text
This Manifest V3 extension does not use remote hosted code. All JavaScript is readable and included in the submitted package. It does not load external scripts, WebAssembly, or code-like configuration, and it does not use eval or dynamic code generation.
```

## Required assets

- Store icon: `icon-large.png` — 128x128
- Screenshot: `images/examples.png` — 1280x800
- Small promo tile: `images/small-tile.png` — 440x280
- Marquee tile: `images/marquee.png` — 1400x560 (optional unless used for featuring)

Before upload, confirm every screenshot represents the current UI and functionality. The build validator checks the asset dimensions but cannot check whether screenshots are current or visually accurate.

## Release checklist

1. Run `npm run check`.
2. Smoke-test week and month views on the current Google Calendar UI.
3. Verify enable/disable, weekend highlighting, opacity, theme, custom colors, and preference persistence.
4. Run `npm run build` and upload `dist/gradient-merge-chrome-v<version>.zip`.
5. Confirm the dashboard listing, Website content disclosure, permission justifications, Limited Use certification, and privacy-policy URL match this release.
6. Confirm the developer account has 2-Step Verification enabled.
