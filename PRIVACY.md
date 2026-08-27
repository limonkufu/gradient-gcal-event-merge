# Privacy Policy

**Gradient Merge for Google Calendar™**

Last updated: August 27, 2026

## Summary

Gradient Merge processes a small amount of Google Calendar page content locally to provide its visible event-merging feature. It does not retain or transmit Calendar content, has no analytics or advertising, and has no developer-operated server.

## Data handled by the extension

### Rendered Google Calendar content

While a Google Calendar tab is open, the extension accesses only the page elements needed for its user-facing purpose:

- Rendered event label text, including the title and any time or label fragments present in the event element, used temporarily to identify duplicate visible events
- Event colors, dimensions, and positions, used to draw the merged gradient
- Rendered dates and weekday headings, used to apply optional weekend highlighting

This processing happens in memory in the current tab. Event labels and other Calendar page content are not copied to browser storage, retained after use, transmitted, or made available to the developer or any other person.

The extension does not use the Google Calendar API or request account credentials, authentication tokens, or Calendar data that is not already present in the rendered page elements used by the feature.

### Extension preferences

The extension stores these user-selected preferences with the browser's `storage.sync` API:

- Whether the extension is enabled
- Whether weekend highlighting is enabled
- Gradient opacity
- Theme selection
- Light and dark weekend colors

The developer cannot access these preferences. Chrome may sync them through the user's Google account when Chrome Sync is enabled; that syncing is performed by the browser and is governed by the user's browser and Google account settings.

## Collection, transmission, and sharing

The extension does not make network requests and does not send data to the developer or to third parties. It includes no analytics, tracking, advertising, or remote code. The developer does not sell, share, or allow human access to Calendar content or extension preferences.

## Retention and deletion

Rendered Calendar content is not retained. Preferences remain in browser storage until the user changes them, clears the extension's stored data, or uninstalls the extension. Synced copies are controlled through the user's Chrome Sync settings.

## Permissions

| Access | Purpose |
| --- | --- |
| `storage` | Save the visual preferences listed above |
| `https://calendar.google.com/*` | Run the packaged content script on Google Calendar so it can provide event merging and weekend highlighting |

The extension does not request access to other sites.

## Limited Use disclosure

Gradient Merge's use of information obtained from Google Calendar complies with the Chrome Web Store User Data Policy, including the Limited Use requirements. Information is used only to provide or improve the extension's disclosed single purpose. It is not transferred for advertising, profiling, creditworthiness, lending, or any unrelated purpose, and humans are not allowed to read it.

## Security

All executable code is included in the extension package. The extension does not download or execute remote code and does not transmit Calendar content.

## Children's privacy

The extension does not knowingly collect personal information from children. Its local-only data handling is the same for every user.

## Changes to this policy

Material changes to data handling will be disclosed before the changed practice begins, as required by Chrome Web Store policy. The date above identifies the current version of this policy.

## Contact

For privacy questions or requests, open an issue in the [project's GitHub repository](https://github.com/limonkufu/gradient-gcal-event-merge/issues).

Google Calendar is a trademark of Google LLC. Use of this trademark is subject to Google Permissions. This extension is independently developed and is not affiliated with or endorsed by Google.
