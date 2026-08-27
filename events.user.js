'use strict';

const DEFAULT_SETTINGS = Object.freeze({
  enabled: true,
  weekendsEnabled: true,
  gradientOpacity: 0.75,
  theme: 'system',
  lightThemeColor: '#f1f6ff',
  darkThemeColor: '#1a1a1a'
});

const SELECTORS = Object.freeze({
  MAIN_CALENDAR: "[role='main'], [role='dialog']",
  MINI_CALENDAR: 'div[data-month], div[data-ical]',
  EVENT: '[data-eventid][role="button"], [data-eventid] [role="button"]'
});

const WEEKEND_INITIALS = new Set([
  new Date(2021, 6, 3).toLocaleString('default', { weekday: 'long' })[0],
  new Date(2021, 6, 4).toLocaleString('default', { weekday: 'long' })[0]
]);

const settings = { ...DEFAULT_SETTINGS };
const originalEventStyles = new WeakMap();
const originalDotStyles = new WeakMap();
let renderScheduled = false;

const getWeekendColor = () => {
  const usesDarkTheme = settings.theme === 'dark'
    || (settings.theme === 'system' && window.matchMedia('(prefers-color-scheme: dark)').matches);
  return usesDarkTheme ? settings.darkThemeColor : settings.lightThemeColor;
};

const colorWithOpacity = (color) => {
  const rgb = color.match(/^rgba?\(([^)]+)\)$/i);
  if (!rgb) {
    return color;
  }

  const channels = rgb[1].split(',').slice(0, 3).map((channel) => channel.trim());
  return channels.length === 3
    ? `rgba(${channels.join(', ')}, ${settings.gradientOpacity})`
    : color;
};

const gradientFor = (colors, angle) => (
  `linear-gradient(${angle}deg, ${colors.map(colorWithOpacity).join(', ')})`
);

const captureStyle = (element, styleMap, properties) => {
  if (!styleMap.has(element)) {
    styleMap.set(
      element,
      Object.fromEntries(properties.map((property) => [property, element.style[property]]))
    );
  }
};

const restoreStyle = (element, styleMap) => {
  const originalStyle = styleMap.get(element);
  if (!originalStyle) {
    return;
  }

  for (const [property, value] of Object.entries(originalStyle)) {
    element.style[property] = value;
  }
};

const findEventDot = (event) => {
  const dotContainer = event.querySelector('[role="button"] div:first-child');
  return dotContainer?.querySelector('div') || null;
};

const restoreEvent = (event) => {
  restoreStyle(event, originalEventStyles);
  const dot = findEventDot(event);
  if (dot) {
    restoreStyle(dot, originalDotStyles);
  }
};

const eventColor = (event) => (
  event.style.backgroundColor
  || event.style.borderColor
  || event.parentElement?.style.borderColor
  || ''
);

const mergeEventElements = (events) => {
  events.sort((first, second) => (
    (Number.parseInt(first.dataset.dragsourceType, 10) || 0)
    - (Number.parseInt(second.dataset.dragsourceType, 10) || 0)
  ));

  const colors = events.map(eventColor).filter(Boolean);
  if (colors.length < 2) {
    return;
  }

  const parentBounds = events[0].parentElement?.getBoundingClientRect();
  if (!parentBounds) {
    return;
  }

  const positions = events.map((event) => {
    const bounds = event.getBoundingClientRect();
    return {
      left: Math.max(bounds.left - parentBounds.left, 0),
      right: Math.max(parentBounds.right - bounds.right, 0)
    };
  });

  const [eventToKeep, ...eventsToHide] = events;
  const eventStyleProperties = [
    'backgroundColor',
    'backgroundImage',
    'backgroundSize',
    'border',
    'left',
    'right',
    'visibility',
    'width'
  ];

  for (const event of events) {
    captureStyle(event, originalEventStyles, eventStyleProperties);
  }

  for (const event of eventsToHide) {
    event.style.visibility = 'hidden';
  }

  if (eventToKeep.style.backgroundColor || eventToKeep.style.borderColor) {
    eventToKeep.style.backgroundImage = gradientFor(colors, 45);
    eventToKeep.style.backgroundSize = 'cover';
    eventToKeep.style.backgroundColor = 'unset';
    eventToKeep.style.left = `${Math.min(...positions.map(({ left }) => left))}px`;
    eventToKeep.style.right = `${Math.min(...positions.map(({ right }) => right))}px`;
    eventToKeep.style.visibility = 'visible';
    eventToKeep.style.width = '';
    eventToKeep.style.border = 'solid 1px #fff';
    return;
  }

  const dot = findEventDot(eventToKeep);
  if (!dot) {
    for (const event of eventsToHide) {
      restoreStyle(event, originalEventStyles);
    }
    return;
  }

  captureStyle(dot, originalDotStyles, [
    'backgroundImage',
    'borderWidth',
    'height',
    'width'
  ]);
  dot.style.backgroundImage = gradientFor(colors, 90);
  dot.style.width = `${colors.length * 4}px`;
  dot.style.borderWidth = '0';
  dot.style.height = '8px';
};

const mergeCalendarEvents = (calendar) => {
  const eventSets = new Map();
  const days = calendar.querySelectorAll('[role="gridcell"]');

  days.forEach((day, dayIndex) => {
    const events = Array.from(day.querySelectorAll(SELECTORS.EVENT));
    for (const event of events) {
      restoreEvent(event);

      const titleElements = event.querySelectorAll('[aria-hidden="true"]');
      if (!titleElements.length) {
        continue;
      }

      const renderedTitle = Array.from(titleElements)
        .map((element) => element.textContent || '')
        .join('')
        .replace(/\s+/g, '');
      const eventKey = `${dayIndex}:${renderedTitle}:${event.style.height}`;
      const matchingEvents = eventSets.get(eventKey) || [];
      matchingEvents.push(event);
      eventSets.set(eventKey, matchingEvents);
    }
  });

  for (const events of eventSets.values()) {
    if (events.length > 1) {
      mergeEventElements(events);
    }
  }
};

const colorCalendarWeekends = (calendar) => {
  const weekendColor = getWeekendColor();
  const nodes = calendar.querySelectorAll("div[role='columnheader'], div[data-datekey]:not([jsaction])");

  for (const node of nodes) {
    if (node.getAttribute('role') === 'columnheader') {
      const initial = node.textContent?.trim()[0];
      if (initial && WEEKEND_INITIALS.has(initial)) {
        node.style.backgroundColor = weekendColor;
      }
      continue;
    }

    const dateKey = Number.parseInt(node.getAttribute('data-datekey'), 10);
    if (!dateKey) {
      continue;
    }

    const year = dateKey >> 9;
    const month = (dateKey & 511) >> 5;
    const day = dateKey & 31;
    const dayOfWeek = new Date(1970 + year, month - 1, day).getDay();
    if (dayOfWeek === 0 || dayOfWeek === 6) {
      node.style.backgroundColor = weekendColor;
    }
  }
};

const colorMiniCalendarWeekends = (calendar) => {
  const weekendColor = getWeekendColor();
  const nodes = calendar.querySelectorAll("span[role='columnheader'], span[data-date]");

  for (const node of nodes) {
    if (node.getAttribute('role') === 'columnheader') {
      const initial = node.textContent?.trim()[0];
      if (initial && WEEKEND_INITIALS.has(initial)) {
        node.style.backgroundColor = weekendColor;
      }
      continue;
    }

    const dateText = node.getAttribute('data-date');
    if (!dateText || dateText.length < 8) {
      continue;
    }

    const date = new Date(
      Number.parseInt(dateText.slice(0, 4), 10),
      Number.parseInt(dateText.slice(4, 6), 10) - 1,
      Number.parseInt(dateText.slice(6, 8), 10)
    );
    if (date.getDay() === 0 || date.getDay() === 6) {
      node.style.backgroundColor = weekendColor;
      if (node.firstElementChild) {
        node.firstElementChild.style.backgroundColor = weekendColor;
      }
    }
  }
};

const render = () => {
  renderScheduled = false;
  for (const calendar of document.querySelectorAll(SELECTORS.MAIN_CALENDAR)) {
    mergeCalendarEvents(calendar);
    if (settings.weekendsEnabled) {
      colorCalendarWeekends(calendar);
    }
  }

  if (settings.weekendsEnabled) {
    for (const miniCalendar of document.querySelectorAll(SELECTORS.MINI_CALENDAR)) {
      colorMiniCalendarWeekends(miniCalendar);
    }
  }
};

const scheduleRender = () => {
  if (renderScheduled) {
    return;
  }

  renderScheduled = true;
  window.requestAnimationFrame(render);
};

const initialize = async () => {
  Object.assign(settings, await chrome.storage.sync.get(DEFAULT_SETTINGS));

  chrome.storage.onChanged.addListener((changes, areaName) => {
    if (areaName !== 'sync') {
      return;
    }

    for (const key of Object.keys(DEFAULT_SETTINGS)) {
      if (changes[key]) {
        settings[key] = changes[key].newValue ?? DEFAULT_SETTINGS[key];
      }
    }

    if (changes.enabled || changes.weekendsEnabled) {
      window.location.reload();
      return;
    }

    scheduleRender();
  });

  if (!settings.enabled) {
    return;
  }

  const observer = new MutationObserver(scheduleRender);
  observer.observe(document.body, { childList: true, subtree: true });

  const colorScheme = window.matchMedia('(prefers-color-scheme: dark)');
  colorScheme.addEventListener('change', () => {
    if (settings.theme === 'system') {
      scheduleRender();
    }
  });

  scheduleRender();
};

initialize().catch((error) => {
  console.error('Gradient Merge could not initialize.', error);
});
