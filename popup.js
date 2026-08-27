'use strict';

const DEFAULT_SETTINGS = Object.freeze({
  enabled: true,
  weekendsEnabled: true,
  gradientOpacity: 0.75,
  theme: 'system',
  lightThemeColor: '#f1f6ff',
  darkThemeColor: '#1a1a1a'
});

document.addEventListener('DOMContentLoaded', () => {
  const enableExtension = document.getElementById('enableExtension');
  const enableWeekends = document.getElementById('enableWeekends');
  const gradientOpacity = document.getElementById('gradientOpacity');
  const opacityValue = document.getElementById('opacityValue');
  const themeSelect = document.getElementById('theme-select');
  const status = document.getElementById('status');

  const colorControls = {
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

  const translations = {
    extensionTitle: 'extensionName',
    enableText: 'popupEnableExtension',
    weekendsText: 'popupEnableWeekends',
    opacityLabel: 'popupGradientOpacity',
    themeSelectLabel: 'popupThemeSelect',
    themeSystemOption: 'popupThemeSystem',
    themeLightOption: 'popupThemeLight',
    themeDarkOption: 'popupThemeDark',
    lightThemeColorLabel: 'popupLightThemeColor',
    darkThemeColorLabel: 'popupDarkThemeColor',
    colorCustomOption: 'popupColorCustom',
    colorCustomOptionDark: 'popupColorCustom',
    colorDefaultBlueOption: 'popupColorDefaultBlue',
    colorLightGrayOption: 'popupColorLightGray',
    colorWarmBeigeOption: 'popupColorWarmBeige',
    colorSoftPurpleOption: 'popupColorSoftPurple',
    colorMintGreenOption: 'popupColorMintGreen',
    colorDefaultDarkOption: 'popupColorDefaultDark',
    colorSoftBlackOption: 'popupColorSoftBlack',
    colorBlueGrayOption: 'popupColorBlueGray',
    colorNavyDarkOption: 'popupColorNavyDark',
    colorCharcoalOption: 'popupColorCharcoal'
  };

  document.documentElement.lang = chrome.i18n.getUILanguage();
  document.documentElement.dir = chrome.i18n.getMessage('@@bidi_dir') || 'ltr';

  for (const [elementId, messageKey] of Object.entries(translations)) {
    const element = document.getElementById(elementId);
    const message = chrome.i18n.getMessage(messageKey);
    if (element && message) {
      element.textContent = message;
    }
  }

  const showStatus = (message, isError = false) => {
    status.textContent = message;
    status.classList.toggle('error', isError);
  };

  const saveSettings = (settings, onSaved) => {
    chrome.storage.sync.set(settings, () => {
      if (chrome.runtime.lastError) {
        showStatus('Settings could not be saved. Please try again.', true);
        return;
      }

      showStatus('');
      onSaved?.();
    });
  };

  const isValidHex = (hex) => /^[0-9A-F]{6}$/i.test(hex);

  const showSaveIndicator = (element) => {
    element.textContent = 'Saved';
    element.classList.add('show');
    window.setTimeout(() => {
      element.classList.remove('show');
      element.textContent = '';
    }, 1500);
  };

  const renderColor = (theme, color, preservePreset = false) => {
    const controls = colorControls[theme];
    const hexColor = String(color).replace(/^#/, '').trim();
    const isValid = isValidHex(hexColor);

    if (!preservePreset) {
      const normalizedColor = `#${hexColor}`.toLowerCase();
      const presetExists = Array.from(controls.preset.options)
        .some(({ value }) => value.toLowerCase() === normalizedColor);
      controls.preset.value = presetExists ? normalizedColor : '';
    }

    controls.hex.value = hexColor;
    controls.hex.classList.toggle('invalid', !isValid);
    controls.hex.setAttribute('aria-invalid', String(!isValid));
    if (isValid) {
      controls.preview.style.backgroundColor = `#${hexColor}`;
    }

    return isValid ? `#${hexColor}` : null;
  };

  const saveColor = (theme, color, preservePreset = false) => {
    const normalizedColor = renderColor(theme, color, preservePreset);
    if (!normalizedColor) {
      return;
    }

    saveSettings(
      { [`${theme}ThemeColor`]: normalizedColor },
      () => showSaveIndicator(colorControls[theme].saved)
    );
  };

  chrome.storage.sync.get(DEFAULT_SETTINGS, (settings) => {
    if (chrome.runtime.lastError) {
      showStatus('Settings could not be loaded. Defaults are shown.', true);
    }

    const resolvedSettings = { ...DEFAULT_SETTINGS, ...settings };
    enableExtension.checked = resolvedSettings.enabled;
    enableWeekends.checked = resolvedSettings.weekendsEnabled;
    gradientOpacity.value = resolvedSettings.gradientOpacity;
    opacityValue.textContent = resolvedSettings.gradientOpacity;
    themeSelect.value = resolvedSettings.theme;
    renderColor('light', resolvedSettings.lightThemeColor);
    renderColor('dark', resolvedSettings.darkThemeColor);
  });

  enableExtension.addEventListener('change', () => {
    saveSettings({ enabled: enableExtension.checked });
  });

  enableWeekends.addEventListener('change', () => {
    saveSettings({ weekendsEnabled: enableWeekends.checked });
  });

  gradientOpacity.addEventListener('input', () => {
    opacityValue.textContent = gradientOpacity.value;
  });

  gradientOpacity.addEventListener('change', () => {
    saveSettings({ gradientOpacity: Number(gradientOpacity.value) });
  });

  themeSelect.addEventListener('change', () => {
    saveSettings({ theme: themeSelect.value });
  });

  for (const theme of ['light', 'dark']) {
    const controls = colorControls[theme];

    controls.preset.addEventListener('change', (event) => {
      if (event.target.value) {
        saveColor(theme, event.target.value);
      }
    });

    controls.hex.addEventListener('input', (event) => {
      renderColor(theme, event.target.value, true);
    });

    controls.hex.addEventListener('change', (event) => {
      saveColor(theme, event.target.value, true);
    });

    controls.hex.addEventListener('paste', (event) => {
      event.preventDefault();
      const pastedText = (event.clipboardData || window.clipboardData).getData('text');
      saveColor(theme, pastedText.replace(/^#/, '').trim(), true);
    });
  }
});
