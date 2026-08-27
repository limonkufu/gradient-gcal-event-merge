# Gradient Merge for Google Calendar™

Gradient Merge makes duplicate events from multiple calendars easier to spot. When the same rendered event appears more than once in a Google Calendar view, the extension combines the copies into one gradient block. It can also highlight weekends with colors chosen for light and dark themes.

![Gradient Merge examples](images/examples.png)

## Privacy and permissions

The extension runs only on `https://calendar.google.com/*` and requests only the `storage` permission.

To identify duplicates, it temporarily processes the event label text, colors, and layout already rendered in the current Calendar tab. Calendar content is never stored or sent anywhere. Visual preferences are saved with the browser's sync storage and may be synced by the browser according to the user's Chrome Sync settings. See [PRIVACY.md](PRIVACY.md) for the complete disclosure.

## Local development

There are no runtime or third-party JavaScript dependencies. The release tooling requires Node.js 18 or newer, `jq`, and `zip`.

```sh
npm run check
npm run build
```

The build creates:

- `dist/gradient-merge-chrome-v<version>.zip` for the Chrome Web Store
- `dist/gradient-merge-firefox-v<version>.zip` for Firefox Add-ons

To test in Chrome, run the build, open `chrome://extensions`, enable Developer mode, choose **Load unpacked**, and select `dist/chrome`.

Before publishing, use the current dashboard copy and disclosure checklist in [STORE_LISTING.md](STORE_LISTING.md). Google Calendar's DOM changes over time, so a release should also be smoke-tested against the current Calendar week and month views.

## Attribution

The event-merging concept was adapted from work by `@imightbeAmy`, with subsequent contributions from `@karjna` and `@limonkufu`.

Google Calendar is a trademark of Google LLC. Use of this trademark is subject to Google Permissions. This project is independently developed and is not affiliated with or endorsed by Google.
