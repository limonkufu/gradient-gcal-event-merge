const getSetting = () => new Promise(res => chrome.storage.local.get('disabled', (s) => res(s.disabled)));
const setIcon = (disabled) => chrome.action.setIcon({
  path: disabled ? "icon-disabled.png" : "icon.png"
});

getSetting().then(setIcon);
