document.addEventListener('DOMContentLoaded', () => {
  const opacitySlider = document.getElementById('gradientOpacity');
  const opacityValue = document.getElementById('opacityValue');
  const enableToggle = document.getElementById('enableExtension');
  const weekendsToggle = document.getElementById('enableWeekends');

  // Set localized strings
  document.getElementById('enableText').textContent = chrome.i18n.getMessage('popupEnableExtension');
  document.getElementById('weekendsText').textContent = chrome.i18n.getMessage('popupEnableWeekends');
  document.getElementById('opacityLabel').textContent = chrome.i18n.getMessage('popupGradientOpacity');

  // Handle RTL languages
  if (chrome.i18n.getMessage('@@bidi_dir') === 'rtl') {
    document.documentElement.setAttribute('dir', 'rtl');
  }

  // Load saved settings
  chrome.storage.sync.get(['gradientOpacity', 'weekendsEnabled'], (result) => {
    opacitySlider.value = result.gradientOpacity || 0.75;
    opacityValue.textContent = opacitySlider.value;
    weekendsToggle.checked = result.weekendsEnabled !== false; // Default to true
  });

  chrome.storage.local.get(['disabled'], (result) => {
    enableToggle.checked = !result.disabled;
  });

  // Save settings when changed
  opacitySlider.addEventListener('input', () => {
    opacityValue.textContent = opacitySlider.value;
    chrome.storage.sync.set({
      gradientOpacity: parseFloat(opacitySlider.value)
    });
  });

  enableToggle.addEventListener('change', () => {
    chrome.storage.local.set({ 
      disabled: !enableToggle.checked 
    }, () => {
      chrome.action.setIcon({
        path: !enableToggle.checked ? "icon-disabled.png" : "icon.png"
      });
    });
  });

  weekendsToggle.addEventListener('change', () => {
    chrome.storage.sync.set({
      weekendsEnabled: weekendsToggle.checked
    });
  });
}); 