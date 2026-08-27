const updateActionIcon = async () => {
  const { enabled = true } = await chrome.storage.sync.get('enabled');
  await chrome.action.setIcon({
    path: enabled ? 'icon.png' : 'icon-disabled.png'
  });
};

const safelyUpdateActionIcon = () => {
  updateActionIcon().catch((error) => {
    console.error('Unable to update the extension icon.', error);
  });
};

chrome.runtime.onInstalled.addListener(safelyUpdateActionIcon);
chrome.runtime.onStartup.addListener(safelyUpdateActionIcon);
chrome.storage.onChanged.addListener((changes, areaName) => {
  if (areaName === 'sync' && changes.enabled) {
    safelyUpdateActionIcon();
  }
});

safelyUpdateActionIcon();
