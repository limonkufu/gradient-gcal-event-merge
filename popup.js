document.addEventListener('DOMContentLoaded', () => {
  // Existing elements
  const enableExtension = document.getElementById('enableExtension');
  const enableWeekends = document.getElementById('enableWeekends');
  const gradientOpacity = document.getElementById('gradientOpacity');
  const opacityValue = document.getElementById('opacityValue');
  const themeSelect = document.getElementById('theme-select');

  // Color control elements
  const elements = {
    light: {
      preset: document.getElementById('light-color-preset'),
      hex: document.getElementById('light-hex-color'),
      preview: document.getElementById('light-preview'),
      saved: document.getElementById('light-saved')
    },
    dark: {
      preset: document.getElementById('dark-color-preset'),
      hex: document.getElementById('dark-hex-color'),
      preview: document.getElementById('dark-preview'),
      saved: document.getElementById('dark-saved')
    }
  };

  // Load all saved settings
  chrome.storage.sync.get([
    'enabled',
    'weekendsEnabled',
    'gradientOpacity',
    'theme',
    'lightThemeColor',
    'darkThemeColor'
  ], (result) => {
    // Existing settings
    enableExtension.checked = result.enabled !== false;
    enableWeekends.checked = result.weekendsEnabled !== false;
    gradientOpacity.value = result.gradientOpacity || 0.15;
    opacityValue.textContent = gradientOpacity.value;
    themeSelect.value = result.theme || 'system';

    // Color settings
    updateColor('light', result.lightThemeColor || '#f1f6ff');
    updateColor('dark', result.darkThemeColor || '#1a1a1a');
  });

  // Existing event listeners
  enableExtension.addEventListener('change', () => {
    chrome.storage.sync.set({ enabled: enableExtension.checked });
  });

  enableWeekends.addEventListener('change', () => {
    chrome.storage.sync.set({ weekendsEnabled: enableWeekends.checked });
  });

  gradientOpacity.addEventListener('input', () => {
    opacityValue.textContent = gradientOpacity.value;
    chrome.storage.sync.set({ gradientOpacity: parseFloat(gradientOpacity.value) });
  });

  themeSelect.addEventListener('change', () => {
    chrome.storage.sync.set({ theme: themeSelect.value });
  });

  // Color control functions
  function isValidHex(hex) {
    return /^[0-9A-F]{6}$/i.test(hex);
  }

  function showSaveIndicator(element) {
    element.classList.add('show');
    setTimeout(() => element.classList.remove('show'), 2000);
  }

  function updateColor(theme, color, skipPreset = false) {
    const els = elements[theme];
    const hexColor = color.replace('#', '');
    
    if (!skipPreset) {
      els.preset.value = els.preset.querySelector(`option[value="#${hexColor}"]`) 
        ? `#${hexColor}` 
        : '';
    }
    
    els.hex.value = hexColor;
    els.preview.style.backgroundColor = `#${hexColor}`;
    
    if (isValidHex(hexColor)) {
      els.hex.classList.remove('invalid');
      chrome.storage.sync.set({ 
        [`${theme}ThemeColor`]: `#${hexColor}` 
      }, () => showSaveIndicator(els.saved));
    } else {
      els.hex.classList.add('invalid');
    }
  }

  // Color control event listeners
  ['light', 'dark'].forEach(theme => {
    const els = elements[theme];

    els.preset.addEventListener('change', (e) => {
      if (e.target.value) {
        updateColor(theme, e.target.value);
      }
    });

    els.hex.addEventListener('input', (e) => {
      updateColor(theme, e.target.value, true);
    });

    els.hex.addEventListener('paste', (e) => {
      e.preventDefault();
      const paste = (e.clipboardData || window.clipboardData).getData('text');
      const cleaned = paste.replace('#', '').trim();
      els.hex.value = cleaned;
      updateColor(theme, cleaned, true);
    });
  });

  // Set up translations
  const translations = {
    // Existing translations
    'enableText': 'popupEnableExtension',
    'weekendsText': 'popupEnableWeekends',
    'opacityLabel': 'popupGradientOpacity',
    
    // New translations
    'themeSelectLabel': 'popupThemeSelect',
    'themeSystemOption': 'popupThemeSystem',
    'themeLightOption': 'popupThemeLight',
    'themeDarkOption': 'popupThemeDark',
    'lightThemeColorLabel': 'popupLightThemeColor',
    'darkThemeColorLabel': 'popupDarkThemeColor',
    'colorCustomOption': 'popupColorCustom',
    'colorCustomOptionDark': 'popupColorCustom',
    'colorDefaultBlueOption': 'popupColorDefaultBlue',
    'colorLightGrayOption': 'popupColorLightGray',
    'colorWarmBeigeOption': 'popupColorWarmBeige',
    'colorSoftPurpleOption': 'popupColorSoftPurple',
    'colorMintGreenOption': 'popupColorMintGreen',
    'colorDefaultDarkOption': 'popupColorDefaultDark',
    'colorSoftBlackOption': 'popupColorSoftBlack',
    'colorBlueGrayOption': 'popupColorBlueGray',
    'colorNavyDarkOption': 'popupColorNavyDark',
    'colorCharcoalOption': 'popupColorCharcoal'
  };

  // Apply all translations
  Object.entries(translations).forEach(([elementId, messageKey]) => {
    const element = document.getElementById(elementId);
    if (element) {
      element.textContent = chrome.i18n.getMessage(messageKey) || element.textContent;
    }
  });
}); 