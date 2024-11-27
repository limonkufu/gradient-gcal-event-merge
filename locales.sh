#!/bin/bash

declare -A FIELDS=(
    ["extensionName,message"]="Gradient Merge for Google Calendar™ Events"
    ["extensionName,description"]="Name of the extension that merges duplicate calendar events with gradients."
    ["extensionDescription,message"]="Merges duplicate Google Calendar events into one rainbow and colors the weekends."
    ["extensionDescription,description"]="Description explaining the extension's main functionality."
    ["popupEnableExtension,message"]="Enable Extension"
    ["popupEnableExtension,description"]="Label for the extension enable/disable toggle switch"
    ["popupGradientOpacity,message"]="Gradient Opacity"
    ["popupGradientOpacity,description"]="Label for the gradient opacity slider"
    ["popupEnableWeekends,message"]="Color Weekends"
    ["popupEnableWeekends,description"]="Label for the weekend coloring toggle switch"
    ["popupThemeSelect,message"]="Theme"
    ["popupThemeSelect,description"]="Label for the theme selection dropdown"
    ["popupThemeSystem,message"]="System Default"
    ["popupThemeSystem,description"]="Option to use system theme settings"
    ["popupThemeLight,message"]="Light"
    ["popupThemeLight,description"]="Option for light theme"
    ["popupThemeDark,message"]="Dark"
    ["popupThemeDark,description"]="Option for dark theme"
    ["popupLightThemeColor,message"]="Light Theme Weekend Color"
    ["popupLightThemeColor,description"]="Label for light theme weekend color selection"
    ["popupDarkThemeColor,message"]="Dark Theme Weekend Color"
    ["popupDarkThemeColor,description"]="Label for dark theme weekend color selection"
    ["popupColorCustom,message"]="Custom..."
    ["popupColorCustom,description"]="Option for custom color selection"
    ["popupColorDefaultBlue,message"]="Default Blue"
    ["popupColorDefaultBlue,description"]="Preset color option for light theme"
    ["popupColorLightGray,message"]="Light Gray"
    ["popupColorLightGray,description"]="Preset color option for light theme"
    ["popupColorWarmBeige,message"]="Warm Beige"
    ["popupColorWarmBeige,description"]="Preset color option for light theme"
    ["popupColorSoftPurple,message"]="Soft Purple"
    ["popupColorSoftPurple,description"]="Preset color option for light theme"
    ["popupColorMintGreen,message"]="Mint Green"
    ["popupColorMintGreen,description"]="Preset color option for light theme"
    ["popupColorDefaultDark,message"]="Default Dark"
    ["popupColorDefaultDark,description"]="Preset color option for dark theme"
    ["popupColorSoftBlack,message"]="Soft Black"
    ["popupColorSoftBlack,description"]="Preset color option for dark theme"
    ["popupColorBlueGray,message"]="Blue Gray"
    ["popupColorBlueGray,description"]="Preset color option for dark theme"
    ["popupColorNavyDark,message"]="Navy Dark"
    ["popupColorNavyDark,description"]="Preset color option for dark theme"
    ["popupColorCharcoal,message"]="Charcoal"
    ["popupColorCharcoal,description"]="Preset color option for dark theme"
)

get_field_content() {
    local lang=$1
    local field=$2
    local type=$3

    case "$lang" in
        "en")
            echo "${FIELDS[$field,$type]}"
            ;;
        "es")
            case "$field,$type" in
                "extensionName,message") echo "Fusión con Degradado para Eventos de Google Calendar™" ;;
                "extensionName,description") echo "Nombre de la extensión que fusiona eventos duplicados del calendario con degradados." ;;
                "extensionDescription,message") echo "Combina eventos duplicados de Google Calendar en un arcoíris y colorea los fines de semana" ;;
                "extensionDescription,description") echo "Descripción que explica la funcionalidad principal de la extensión." ;;
                "popupEnableExtension,message") echo "Activar Extensión" ;;
                "popupEnableExtension,description") echo "Etiqueta para el interruptor de activar/desactivar la extensión" ;;
                "popupGradientOpacity,message") echo "Transparencia" ;;
                "popupGradientOpacity,description") echo "Etiqueta para el control de transparencia" ;;
                "popupEnableWeekends,message") echo "Colorear Fines de Semana" ;;
                "popupEnableWeekends,description") echo "Etiqueta para el interruptor de colorear fines de semana" ;;
                "popupThemeSelect,message") echo "Tema" ;;
                "popupThemeSelect,description") echo "Etiqueta para la selección de tema" ;;
                "popupThemeSystem,message") echo "Predeterminado del Sistema" ;;
                "popupThemeSystem,description") echo "Opción para usar la configuración del tema del sistema" ;;
                "popupThemeLight,message") echo "Claro" ;;
                "popupThemeLight,description") echo "Opción para tema claro" ;;
                "popupThemeDark,message") echo "Oscuro" ;;
                "popupThemeDark,description") echo "Opción para tema oscuro" ;;
                "popupLightThemeColor,message") echo "Color de Fin de Semana (Tema Claro)" ;;
                "popupLightThemeColor,description") echo "Etiqueta para selección de color de fin de semana en tema claro" ;;
                "popupDarkThemeColor,message") echo "Color de Fin de Semana (Tema Oscuro)" ;;
                "popupDarkThemeColor,description") echo "Etiqueta para selección de color de fin de semana en tema oscuro" ;;
                "popupColorCustom,message") echo "Personalizado..." ;;
                "popupColorCustom,description") echo "Opción para selección de color personalizado" ;;
                "popupColorDefaultBlue,message") echo "Azul Predeterminado" ;;
                "popupColorDefaultBlue,description") echo "Opción de color preestablecido para tema claro" ;;
                "popupColorLightGray,message") echo "Gris Claro" ;;
                "popupColorLightGray,description") echo "Opción de color preestablecido para tema claro" ;;
                "popupColorWarmBeige,message") echo "Beige Cálido" ;;
                "popupColorWarmBeige,description") echo "Opción de color preestablecido para tema claro" ;;
                "popupColorSoftPurple,message") echo "Púrpura Suave" ;;
                "popupColorSoftPurple,description") echo "Opción de color preestablecido para tema claro" ;;
                "popupColorMintGreen,message") echo "Verde Menta" ;;
                "popupColorMintGreen,description") echo "Opción de color preestablecido para tema claro" ;;
                "popupColorDefaultDark,message") echo "Oscuro Predeterminado" ;;
                "popupColorDefaultDark,description") echo "Opción de color preestablecido para tema oscuro" ;;
                "popupColorSoftBlack,message") echo "Negro Suave" ;;
                "popupColorSoftBlack,description") echo "Opción de color preestablecido para tema oscuro" ;;
                "popupColorBlueGray,message") echo "Gris Azulado" ;;
                "popupColorBlueGray,description") echo "Opción de color preestablecido para tema oscuro" ;;
                "popupColorNavyDark,message") echo "Azul Marino Oscuro" ;;
                "popupColorNavyDark,description") echo "Opción de color preestablecido para tema oscuro" ;;
                "popupColorCharcoal,message") echo "Carbón" ;;
                "popupColorCharcoal,description") echo "Opción de color preestablecido para tema oscuro" ;;
            esac
            ;;
            "zh-CN")
            case "$field,$type" in
                "extensionName,message") echo "Google Calendar™ 事件渐变合并" ;;
                "extensionName,description") echo "合并重复日历事件的渐变效果扩展程序。" ;;
                "extensionDescription,message") echo "将重复的日历事件合并为彩虹效果并为周末着色" ;;
                "extensionDescription,description") echo "扩展程序的主要功能说明。" ;;
                "popupEnableExtension,message") echo "启用扩展" ;;
                "popupEnableExtension,description") echo "扩展程序开关的标签" ;;
                "popupGradientOpacity,message") echo "透明度" ;;
                "popupGradientOpacity,description") echo "透明度滑块的标签" ;;
                "popupEnableWeekends,message") echo "周末着色" ;;
                "popupEnableWeekends,description") echo "周末着色开关的标签" ;;
                "popupThemeSelect,message") echo "主题" ;;
                "popupThemeSelect,description") echo "主题选择下拉菜单的标签" ;;
                "popupThemeSystem,message") echo "系统默认" ;;
                "popupThemeSystem,description") echo "使用系统主题设置" ;;
                "popupThemeLight,message") echo "浅色" ;;
                "popupThemeLight,description") echo "浅色主题选项" ;;
                "popupThemeDark,message") echo "深色" ;;
                "popupThemeDark,description") echo "深色主题选项" ;;
                "popupLightThemeColor,message") echo "周末颜色（浅色主题）" ;;
                "popupLightThemeColor,description") echo "浅色主题周末颜色选择" ;;
                "popupDarkThemeColor,message") echo "周末颜色（深色主题）" ;;
                "popupDarkThemeColor,description") echo "深色主题周末颜色选择" ;;
                "popupColorCustom,message") echo "自定义..." ;;
                "popupColorCustom,description") echo "自定义颜色选择" ;;
                "popupColorDefaultBlue,message") echo "默认蓝" ;;
                "popupColorDefaultBlue,description") echo "浅色主题默认颜色" ;;
                "popupColorLightGray,message") echo "浅灰" ;;
                "popupColorLightGray,description") echo "浅色主题预设颜色" ;;
                "popupColorWarmBeige,message") echo "暖米色" ;;
                "popupColorWarmBeige,description") echo "浅色主题预设颜色" ;;
                "popupColorSoftPurple,message") echo "柔紫" ;;
                "popupColorSoftPurple,description") echo "浅色主题预设颜色" ;;
                "popupColorMintGreen,message") echo "薄荷绿" ;;
                "popupColorMintGreen,description") echo "浅色主题预设颜色" ;;
                "popupColorDefaultDark,message") echo "默认深色" ;;
                "popupColorDefaultDark,description") echo "深色主题预设颜色" ;;
                "popupColorSoftBlack,message") echo "柔黑" ;;
                "popupColorSoftBlack,description") echo "深色主题预设颜色" ;;
                "popupColorBlueGray,message") echo "蓝灰" ;;
                "popupColorBlueGray,description") echo "深色主题预设颜色" ;;
                "popupColorNavyDark,message") echo "深蓝" ;;
                "popupColorNavyDark,description") echo "深色主题预设颜色" ;;
                "popupColorCharcoal,message") echo "炭黑" ;;
                "popupColorCharcoal,description") echo "深色主题预设颜色" ;;
            esac
            ;;
        "hi-IN")
            case "$field,$type" in
                "extensionName,message") echo "Google Calendar™ इवेंट्स के लिए ग्रेडिएंट मर्ज" ;;
                "extensionName,description") echo "डुप्लिकेट कैलेंडर इवेंट्स को ग्रेडिएंट के साथ मर्ज करने वाला एक्सटेंशन।" ;;
                "extensionDescription,message") echo "दोहराए गए कैलेंडर इवेंट्स को इंद्रधनुष में मिलाता है और सप्ताहांत को रंगता है" ;;
                "extensionDescription,description") echo "एक्सटेंशन की मुख्य कार्यक्षमता का विवरण।" ;;
                "popupEnableExtension,message") echo "एक्सटेंशन चालू करें" ;;
                "popupEnableExtension,description") echo "एक्सटेंशन चालू/बंद स्विच का लेबल" ;;
                "popupGradientOpacity,message") echo "पारदर्शिता" ;;
                "popupGradientOpacity,description") echo "पारदर्शिता स्लाइडर का लेबल" ;;
                "popupEnableWeekends,message") echo "सप्ताहांत रंगें" ;;
                "popupEnableWeekends,description") echo "सप्ताहांत रंगने के स्विच का लेबल" ;;
                "popupThemeSelect,message") echo "थीम" ;;
                "popupThemeSelect,description") echo "थीम चुनने का लेबल" ;;
                "popupThemeSystem,message") echo "सिस्टम डिफ़ॉल्ट" ;;
                "popupThemeSystem,description") echo "सिस्टम थीम सेटिंग्स का उपयोग करें" ;;
                "popupThemeLight,message") echo "लाइट" ;;
                "popupThemeLight,description") echo "लाइट थीम विकल्प" ;;
                "popupThemeDark,message") echo "डार्क" ;;
                "popupThemeDark,description") echo "डार्क थीम विकल्प" ;;
                "popupLightThemeColor,message") echo "सप्ताहांत रंग (लाइट थीम)" ;;
                "popupLightThemeColor,description") echo "लाइट थीम में सप्ताहांत का रंग चुनें" ;;
                "popupDarkThemeColor,message") echo "सप्ताहांत रंग (डार्क थीम)" ;;
                "popupDarkThemeColor,description") echo "डार्क थीम में सप्ताहांत का रंग चुनें" ;;
                "popupColorCustom,message") echo "कस्टम..." ;;
                "popupColorCustom,description") echo "अपना रंग चुनें" ;;
                "popupColorDefaultBlue,message") echo "डिफ़ॉल्ट नीला" ;;
                "popupColorDefaultBlue,description") echo "लाइट थीम का पूर्वनिर्धारित रंग" ;;
                "popupColorLightGray,message") echo "हल्का ग्रे" ;;
                "popupColorLightGray,description") echo "लाइट थीम का पूर्वनिर्धारित रंग" ;;
                "popupColorWarmBeige,message") echo "गर्म बेज" ;;
                "popupColorWarmBeige,description") echo "लाइट थीम का पूर्वनिर्धारित रंग" ;;
                "popupColorSoftPurple,message") echo "हल्का बैंगनी" ;;
                "popupColorSoftPurple,description") echo "लाइट थीम का पूर्वनिर्धारित रंग" ;;
                "popupColorMintGreen,message") echo "मिंट हरा" ;;
                "popupColorMintGreen,description") echo "लाइट थीम का पूर्वनिर्धारित रंग" ;;
                "popupColorDefaultDark,message") echo "डिफ़ॉल्ट डार्क" ;;
                "popupColorDefaultDark,description") echo "डार्क थीम का पूर्वनिर्धारित रंग" ;;
                "popupColorSoftBlack,message") echo "हल्का काला" ;;
                "popupColorSoftBlack,description") echo "डार्क थीम का पूर्वनिर्धारित रंग" ;;
                "popupColorBlueGray,message") echo "नीला ग्रे" ;;
                "popupColorBlueGray,description") echo "डार्क थीम का पूर्वनिर्धारित रंग" ;;
                "popupColorNavyDark,message") echo "गहरा नीला" ;;
                "popupColorNavyDark,description") echo "डार्क थीम का पूर्वनिर्धारित रंग" ;;
                "popupColorCharcoal,message") echo "कोयला काला" ;;
                "popupColorCharcoal,description") echo "डार्क थीम का पूर्वनिर्धारित रंग" ;;
            esac
            ;;
            "ar-001")
            case "$field,$type" in
                "extensionName,message") echo "دمج متدرج لأحداث تقويم Google™" ;;
                "extensionName,description") echo "إضافة لدمج أحداث التقويم المكررة بتأثيرات متدرجة" ;;
                "extensionDescription,message") echo "يدمج الأحداث المكررة في قوس قزح ويلون عطلات نهاية الأسبوع" ;;
                "extensionDescription,description") echo "وصف وظيفة الإضافة الرئيسية" ;;
                "popupEnableExtension,message") echo "تفعيل الإضافة" ;;
                "popupEnableExtension,description") echo "زر تفعيل/تعطيل الإضافة" ;;
                "popupGradientOpacity,message") echo "درجة الشفافية" ;;
                "popupGradientOpacity,description") echo "شريط تحكم الشفافية" ;;
                "popupEnableWeekends,message") echo "تلوين نهاية الأسبوع" ;;
                "popupEnableWeekends,description") echo "زر تفعيل تلوين نهاية الأسبوع" ;;
                "popupThemeSelect,message") echo "المظهر" ;;
                "popupThemeSelect,description") echo "اختيار المظهر" ;;
                "popupThemeSystem,message") echo "النظام الافتراضي" ;;
                "popupThemeSystem,description") echo "استخدام إعدادات مظهر النظام" ;;
                "popupThemeLight,message") echo "فاتح" ;;
                "popupThemeLight,description") echo "المظهر الفاتح" ;;
                "popupThemeDark,message") echo "داكن" ;;
                "popupThemeDark,description") echo "المظهر الداكن" ;;
                "popupLightThemeColor,message") echo "لون نهاية الأسبوع (المظهر الفاتح)" ;;
                "popupLightThemeColor,description") echo "اختيار لون نهاية الأسبوع للمظهر الفاتح" ;;
                "popupDarkThemeColor,message") echo "لون نهاية الأسبوع (المظهر الداكن)" ;;
                "popupDarkThemeColor,description") echo "اختيار لون نهاية الأسبوع للمظهر الداكن" ;;
                "popupColorCustom,message") echo "مخصص..." ;;
                "popupColorCustom,description") echo "اختيار لون مخصص" ;;
                "popupColorDefaultBlue,message") echo "الأزرق الافتراضي" ;;
                "popupColorDefaultBlue,description") echo "لون جاهز للمظهر الفاتح" ;;
                "popupColorLightGray,message") echo "رمادي فاتح" ;;
                "popupColorLightGray,description") echo "لون جاهز للمظهر الفاتح" ;;
                "popupColorWarmBeige,message") echo "بيج دافئ" ;;
                "popupColorWarmBeige,description") echo "لون جاهز للمظهر الفاتح" ;;
                "popupColorSoftPurple,message") echo "بنفسجي هادئ" ;;
                "popupColorSoftPurple,description") echo "لون جاهز للمظهر الفاتح" ;;
                "popupColorMintGreen,message") echo "أخضر نعناعي" ;;
                "popupColorMintGreen,description") echo "لون جاهز للمظهر الفاتح" ;;
                "popupColorDefaultDark,message") echo "الداكن الافتراضي" ;;
                "popupColorDefaultDark,description") echo "لون جاهز للمظهر الداكن" ;;
                "popupColorSoftBlack,message") echo "أسود هادئ" ;;
                "popupColorSoftBlack,description") echo "لون جاهز للمظهر الداكن" ;;
                "popupColorBlueGray,message") echo "رمادي مزرق" ;;
                "popupColorBlueGray,description") echo "لون جاهز للمظهر الداكن" ;;
                "popupColorNavyDark,message") echo "كحلي داكن" ;;
                "popupColorNavyDark,description") echo "لون جاهز للمظهر الداكن" ;;
                "popupColorCharcoal,message") echo "فحمي" ;;
                "popupColorCharcoal,description") echo "لون جاهز للمظهر الداكن" ;;
            esac
            ;;
        "pt")
            case "$field,$type" in
                "extensionName,message") echo "Mesclagem Gradiente para Eventos do Google Calendar™" ;;
                "extensionName,description") echo "Extensão que mescla eventos duplicados com gradientes" ;;
                "extensionDescription,message") echo "Mescla eventos duplicados em um arco-íris e colore os fins de semana" ;;
                "extensionDescription,description") echo "Descrição da funcionalidade principal da extensão" ;;
                "popupEnableExtension,message") echo "Ativar Extensão" ;;
                "popupEnableExtension,description") echo "Botão para ativar/desativar a extensão" ;;
                "popupGradientOpacity,message") echo "Transparência" ;;
                "popupGradientOpacity,description") echo "Controle de transparência" ;;
                "popupEnableWeekends,message") echo "Colorir Fins de Semana" ;;
                "popupEnableWeekends,description") echo "Botão para colorir fins de semana" ;;
                "popupThemeSelect,message") echo "Tema" ;;
                "popupThemeSelect,description") echo "Seleção de tema" ;;
                "popupThemeSystem,message") echo "Padrão do Sistema" ;;
                "popupThemeSystem,description") echo "Usar configurações do sistema" ;;
                "popupThemeLight,message") echo "Claro" ;;
                "popupThemeLight,description") echo "Tema claro" ;;
                "popupThemeDark,message") echo "Escuro" ;;
                "popupThemeDark,description") echo "Tema escuro" ;;
                "popupLightThemeColor,message") echo "Cor do Fim de Semana (Tema Claro)" ;;
                "popupLightThemeColor,description") echo "Cor do fim de semana para o tema claro" ;;
                "popupDarkThemeColor,message") echo "Cor do Fim de Semana (Tema Escuro)" ;;
                "popupDarkThemeColor,description") echo "Cor do fim de semana para o tema escuro" ;;
                "popupColorCustom,message") echo "Personalizar..." ;;
                "popupColorCustom,description") echo "Escolher cor personalizada" ;;
                "popupColorDefaultBlue,message") echo "Azul Padrão" ;;
                "popupColorDefaultBlue,description") echo "Cor predefinida para tema claro" ;;
                "popupColorLightGray,message") echo "Cinza Claro" ;;
                "popupColorLightGray,description") echo "Cor predefinida para tema claro" ;;
                "popupColorWarmBeige,message") echo "Bege Quente" ;;
                "popupColorWarmBeige,description") echo "Cor predefinida para tema claro" ;;
                "popupColorSoftPurple,message") echo "Roxo Suave" ;;
                "popupColorSoftPurple,description") echo "Cor predefinida para tema claro" ;;
                "popupColorMintGreen,message") echo "Verde Menta" ;;
                "popupColorMintGreen,description") echo "Cor predefinida para tema claro" ;;
                "popupColorDefaultDark,message") echo "Escuro Padrão" ;;
                "popupColorDefaultDark,description") echo "Cor predefinida para tema escuro" ;;
                "popupColorSoftBlack,message") echo "Preto Suave" ;;
                "popupColorSoftBlack,description") echo "Cor predefinida para tema escuro" ;;
                "popupColorBlueGray,message") echo "Cinza Azulado" ;;
                "popupColorBlueGray,description") echo "Cor predefinida para tema escuro" ;;
                "popupColorNavyDark,message") echo "Azul Marinho" ;;
                "popupColorNavyDark,description") echo "Cor predefinida para tema escuro" ;;
                "popupColorCharcoal,message") echo "Carvão" ;;
                "popupColorCharcoal,description") echo "Cor predefinida para tema escuro" ;;
            esac
            ;;
            "ru")
            case "$field,$type" in
                "extensionName,message") echo "Градиентное объединение событий Google Calendar™" ;;
                "extensionName,description") echo "Расширение для объединения повторяющихся событий с градиентами" ;;
                "extensionDescription,message") echo "Объединяет повторяющиеся события в радугу и раскрашивает выходные" ;;
                "extensionDescription,description") echo "Описание основной функции расширения" ;;
                "popupEnableExtension,message") echo "Включить расширение" ;;
                "popupEnableExtension,description") echo "Переключатель расширения" ;;
                "popupGradientOpacity,message") echo "Прозрачность" ;;
                "popupGradientOpacity,description") echo "Регулятор прозрачности" ;;
                "popupEnableWeekends,message") echo "Раскрасить выходные" ;;
                "popupEnableWeekends,description") echo "Переключатель окраски выходных" ;;
                "popupThemeSelect,message") echo "Тема" ;;
                "popupThemeSelect,description") echo "Выбор темы" ;;
                "popupThemeSystem,message") echo "Как в системе" ;;
                "popupThemeSystem,description") echo "Использовать системную тему" ;;
                "popupThemeLight,message") echo "Светлая" ;;
                "popupThemeLight,description") echo "Светлая тема" ;;
                "popupThemeDark,message") echo "Тёмная" ;;
                "popupThemeDark,description") echo "Тёмная тема" ;;
                "popupLightThemeColor,message") echo "Цвет выходных (светлая тема)" ;;
                "popupLightThemeColor,description") echo "Выбор цвета выходных для светлой темы" ;;
                "popupDarkThemeColor,message") echo "Цвет выходных (тёмная тема)" ;;
                "popupDarkThemeColor,description") echo "Выбор цвета выходных для тёмной темы" ;;
                "popupColorCustom,message") echo "Свой..." ;;
                "popupColorCustom,description") echo "Выбор своего цвета" ;;
                "popupColorDefaultBlue,message") echo "Стандартный синий" ;;
                "popupColorDefaultBlue,description") echo "Готовый цвет для светлой темы" ;;
                "popupColorLightGray,message") echo "Светло-серый" ;;
                "popupColorLightGray,description") echo "Готовый цвет для светлой темы" ;;
                "popupColorWarmBeige,message") echo "Тёплый бежевый" ;;
                "popupColorWarmBeige,description") echo "Готовый цвет для светлой темы" ;;
                "popupColorSoftPurple,message") echo "Нежно-фиолетовый" ;;
                "popupColorSoftPurple,description") echo "Готовый цвет для светлой темы" ;;
                "popupColorMintGreen,message") echo "Мятный" ;;
                "popupColorMintGreen,description") echo "Готовый цвет для светлой темы" ;;
                "popupColorDefaultDark,message") echo "Стандартный тёмный" ;;
                "popupColorDefaultDark,description") echo "Готовый цвет для тёмной темы" ;;
                "popupColorSoftBlack,message") echo "Мягкий чёрный" ;;
                "popupColorSoftBlack,description") echo "Готовый цвет для тёмной темы" ;;
                "popupColorBlueGray,message") echo "Серо-голубой" ;;
                "popupColorBlueGray,description") echo "Готовый цвет для тёмной темы" ;;
                "popupColorNavyDark,message") echo "Тёмно-синий" ;;
                "popupColorNavyDark,description") echo "Готовый цвет для тёмной темы" ;;
                "popupColorCharcoal,message") echo "Угольный" ;;
                "popupColorCharcoal,description") echo "Готовый цвет для тёмной темы" ;;
            esac
            ;;
        "ja")
            case "$field,$type" in
                "extensionName,message") echo "Google Calendar™ イベントのグラデーション結合" ;;
                "extensionName,description") echo "重複イベントをグラデーションで結合する拡張機能" ;;
                "extensionDescription,message") echo "重複イベントを虹色に結合し、週末に色を付けます" ;;
                "extensionDescription,description") echo "拡張機能の主な機能の説明" ;;
                "popupEnableExtension,message") echo "拡張機能を有効化" ;;
                "popupEnableExtension,description") echo "拡張機能の切り替えスイッチ" ;;
                "popupGradientOpacity,message") echo "透明度" ;;
                "popupGradientOpacity,description") echo "透明度の調整" ;;
                "popupEnableWeekends,message") echo "週末の色付け" ;;
                "popupEnableWeekends,description") echo "週末の色付けスイッチ" ;;
                "popupThemeSelect,message") echo "テーマ" ;;
                "popupThemeSelect,description") echo "テーマの選択" ;;
                "popupThemeSystem,message") echo "システム設定" ;;
                "popupThemeSystem,description") echo "システムのテーマを使用" ;;
                "popupThemeLight,message") echo "ライト" ;;
                "popupThemeLight,description") echo "ライトテーマ" ;;
                "popupThemeDark,message") echo "ダーク" ;;
                "popupThemeDark,description") echo "ダークテーマ" ;;
                "popupLightThemeColor,message") echo "週末の色（ライト）" ;;
                "popupLightThemeColor,description") echo "ライトテーマの週末の色" ;;
                "popupDarkThemeColor,message") echo "週末の色（ダーク）" ;;
                "popupDarkThemeColor,description") echo "ダークテーマの週末の色" ;;
                "popupColorCustom,message") echo "カスタム..." ;;
                "popupColorCustom,description") echo "カスタムカラーの選択" ;;
                "popupColorDefaultBlue,message") echo "標準の青" ;;
                "popupColorDefaultBlue,description") echo "ライトテーマのプリセット色" ;;
                "popupColorLightGray,message") echo "ライトグレー" ;;
                "popupColorLightGray,description") echo "ライトテーマのプリセット色" ;;
                "popupColorWarmBeige,message") echo "温かみのあるベージュ" ;;
                "popupColorWarmBeige,description") echo "ライトテーマのプリセット色" ;;
                "popupColorSoftPurple,message") echo "優しい紫" ;;
                "popupColorSoftPurple,description") echo "ライトテーマのプリセット色" ;;
                "popupColorMintGreen,message") echo "ミントグリーン" ;;
                "popupColorMintGreen,description") echo "ライトテーマのプリセット色" ;;
                "popupColorDefaultDark,message") echo "標準のダーク" ;;
                "popupColorDefaultDark,description") echo "ダークテーマのプリセット色" ;;
                "popupColorSoftBlack,message") echo "柔らかい黒" ;;
                "popupColorSoftBlack,description") echo "ダークテーマのプリセット色" ;;
                "popupColorBlueGray,message") echo "ブルーグレー" ;;
                "popupColorBlueGray,description") echo "ダークテーマのプリセット色" ;;
                "popupColorNavyDark,message") echo "ダークネイビー" ;;
                "popupColorNavyDark,description") echo "ダークテーマのプリセット色" ;;
                "popupColorCharcoal,message") echo "チャコール" ;;
                "popupColorCharcoal,description") echo "ダークテーマのプリセット色" ;;
            esac
            ;;
            "de")
            case "$field,$type" in
                "extensionName,message") echo "Farbverlauf-Zusammenführung für Google Calendar™" ;;
                "extensionName,description") echo "Erweiterung zum Zusammenführen doppelter Kalenderereignisse mit Farbverläufen" ;;
                "extensionDescription,message") echo "Führt doppelte Ereignisse in einem Regenbogen zusammen und färbt Wochenenden" ;;
                "extensionDescription,description") echo "Beschreibung der Hauptfunktion der Erweiterung" ;;
                "popupEnableExtension,message") echo "Erweiterung aktivieren" ;;
                "popupEnableExtension,description") echo "Schalter für die Erweiterung" ;;
                "popupGradientOpacity,message") echo "Transparenz" ;;
                "popupGradientOpacity,description") echo "Transparenzregler" ;;
                "popupEnableWeekends,message") echo "Wochenenden einfärben" ;;
                "popupEnableWeekends,description") echo "Schalter für Wochenendfarben" ;;
                "popupThemeSelect,message") echo "Thema" ;;
                "popupThemeSelect,description") echo "Themenauswahl" ;;
                "popupThemeSystem,message") echo "Systemstandard" ;;
                "popupThemeSystem,description") echo "Systemthema verwenden" ;;
                "popupThemeLight,message") echo "Hell" ;;
                "popupThemeLight,description") echo "Helles Thema" ;;
                "popupThemeDark,message") echo "Dunkel" ;;
                "popupThemeDark,description") echo "Dunkles Thema" ;;
                "popupLightThemeColor,message") echo "Wochenendfarbe (Hell)" ;;
                "popupLightThemeColor,description") echo "Wochenendfarbe für helles Thema" ;;
                "popupDarkThemeColor,message") echo "Wochenendfarbe (Dunkel)" ;;
                "popupDarkThemeColor,description") echo "Wochenendfarbe für dunkles Thema" ;;
                "popupColorCustom,message") echo "Anpassen..." ;;
                "popupColorCustom,description") echo "Eigene Farbe wählen" ;;
                "popupColorDefaultBlue,message") echo "Standardblau" ;;
                "popupColorDefaultBlue,description") echo "Voreingestellte Farbe für helles Thema" ;;
                "popupColorLightGray,message") echo "Hellgrau" ;;
                "popupColorLightGray,description") echo "Voreingestellte Farbe für helles Thema" ;;
                "popupColorWarmBeige,message") echo "Warmbeige" ;;
                "popupColorWarmBeige,description") echo "Voreingestellte Farbe für helles Thema" ;;
                "popupColorSoftPurple,message") echo "Zartes Violett" ;;
                "popupColorSoftPurple,description") echo "Voreingestellte Farbe für helles Thema" ;;
                "popupColorMintGreen,message") echo "Mintgrün" ;;
                "popupColorMintGreen,description") echo "Voreingestellte Farbe für helles Thema" ;;
                "popupColorDefaultDark,message") echo "Standarddunkel" ;;
                "popupColorDefaultDark,description") echo "Voreingestellte Farbe für dunkles Thema" ;;
                "popupColorSoftBlack,message") echo "Samtgrau" ;;
                "popupColorSoftBlack,description") echo "Voreingestellte Farbe für dunkles Thema" ;;
                "popupColorBlueGray,message") echo "Blaugrau" ;;
                "popupColorBlueGray,description") echo "Voreingestellte Farbe für dunkles Thema" ;;
                "popupColorNavyDark,message") echo "Marineblau" ;;
                "popupColorNavyDark,description") echo "Voreingestellte Farbe für dunkles Thema" ;;
                "popupColorCharcoal,message") echo "Anthrazit" ;;
                "popupColorCharcoal,description") echo "Voreingestellte Farbe für dunkles Thema" ;;
            esac
            ;;
        "fr")
            case "$field,$type" in
                "extensionName,message") echo "Fusion en dégradé pour Google Calendar™" ;;
                "extensionName,description") echo "Extension qui fusionne les événements en double avec des dégradés" ;;
                "extensionDescription,message") echo "Fusionne les événements en double en arc-en-ciel et colore les week-ends" ;;
                "extensionDescription,description") echo "Description de la fonction principale de l'extension" ;;
                "popupEnableExtension,message") echo "Activer l'extension" ;;
                "popupEnableExtension,description") echo "Interrupteur de l'extension" ;;
                "popupGradientOpacity,message") echo "Transparence" ;;
                "popupGradientOpacity,description") echo "Réglage de la transparence" ;;
                "popupEnableWeekends,message") echo "Colorer les week-ends" ;;
                "popupEnableWeekends,description") echo "Interrupteur pour les week-ends" ;;
                "popupThemeSelect,message") echo "Thème" ;;
                "popupThemeSelect,description") echo "Choix du thème" ;;
                "popupThemeSystem,message") echo "Système" ;;
                "popupThemeSystem,description") echo "Utiliser le thème système" ;;
                "popupThemeLight,message") echo "Clair" ;;
                "popupThemeLight,description") echo "Thème clair" ;;
                "popupThemeDark,message") echo "Sombre" ;;
                "popupThemeDark,description") echo "Thème sombre" ;;
                "popupLightThemeColor,message") echo "Couleur week-end (Clair)" ;;
                "popupLightThemeColor,description") echo "Couleur des week-ends pour le thème clair" ;;
                "popupDarkThemeColor,message") echo "Couleur week-end (Sombre)" ;;
                "popupDarkThemeColor,description") echo "Couleur des week-ends pour le thème sombre" ;;
                "popupColorCustom,message") echo "Personnaliser..." ;;
                "popupColorCustom,description") echo "Choisir une couleur personnalisée" ;;
                "popupColorDefaultBlue,message") echo "Bleu standard" ;;
                "popupColorDefaultBlue,description") echo "Couleur prédéfinie pour le thème clair" ;;
                "popupColorLightGray,message") echo "Gris clair" ;;
                "popupColorLightGray,description") echo "Couleur prédéfinie pour le thème clair" ;;
                "popupColorWarmBeige,message") echo "Beige chaud" ;;
                "popupColorWarmBeige,description") echo "Couleur prédéfinie pour le thème clair" ;;
                "popupColorSoftPurple,message") echo "Violet doux" ;;
                "popupColorSoftPurple,description") echo "Couleur prédéfinie pour le thème clair" ;;
                "popupColorMintGreen,message") echo "Vert menthe" ;;
                "popupColorMintGreen,description") echo "Couleur prédéfinie pour le thème clair" ;;
                "popupColorDefaultDark,message") echo "Sombre standard" ;;
                "popupColorDefaultDark,description") echo "Couleur prédéfinie pour le thème sombre" ;;
                "popupColorSoftBlack,message") echo "Noir doux" ;;
                "popupColorSoftBlack,description") echo "Couleur prédéfinie pour le thème sombre" ;;
                "popupColorBlueGray,message") echo "Gris bleuté" ;;
                "popupColorBlueGray,description") echo "Couleur prédéfinie pour le thème sombre" ;;
                "popupColorNavyDark,message") echo "Bleu marine" ;;
                "popupColorNavyDark,description") echo "Couleur prédéfinie pour le thème sombre" ;;
                "popupColorCharcoal,message") echo "Charbon" ;;
                "popupColorCharcoal,description") echo "Couleur prédéfinie pour le thème sombre" ;;
            esac
            ;;
            "it")
            case "$field,$type" in
                "extensionName,message") echo "Fusione a gradiente per Google Calendar™" ;;
                "extensionName,description") echo "Estensione che unisce eventi duplicati con gradienti" ;;
                "extensionDescription,message") echo "Unisce eventi duplicati in arcobaleno e colora i weekend" ;;
                "extensionDescription,description") echo "Descrizione della funzione principale dell'estensione" ;;
                "popupEnableExtension,message") echo "Attiva estensione" ;;
                "popupEnableExtension,description") echo "Interruttore dell'estensione" ;;
                "popupGradientOpacity,message") echo "Trasparenza" ;;
                "popupGradientOpacity,description") echo "Regolazione trasparenza" ;;
                "popupEnableWeekends,message") echo "Colora weekend" ;;
                "popupEnableWeekends,description") echo "Interruttore per colorare i weekend" ;;
                "popupThemeSelect,message") echo "Tema" ;;
                "popupThemeSelect,description") echo "Selezione tema" ;;
                "popupThemeSystem,message") echo "Sistema" ;;
                "popupThemeSystem,description") echo "Usa tema di sistema" ;;
                "popupThemeLight,message") echo "Chiaro" ;;
                "popupThemeLight,description") echo "Tema chiaro" ;;
                "popupThemeDark,message") echo "Scuro" ;;
                "popupThemeDark,description") echo "Tema scuro" ;;
                "popupLightThemeColor,message") echo "Colore weekend (Chiaro)" ;;
                "popupLightThemeColor,description") echo "Colore weekend per tema chiaro" ;;
                "popupDarkThemeColor,message") echo "Colore weekend (Scuro)" ;;
                "popupDarkThemeColor,description") echo "Colore weekend per tema scuro" ;;
                "popupColorCustom,message") echo "Personalizza..." ;;
                "popupColorCustom,description") echo "Scegli colore personalizzato" ;;
                "popupColorDefaultBlue,message") echo "Blu predefinito" ;;
                "popupColorDefaultBlue,description") echo "Colore predefinito per tema chiaro" ;;
                "popupColorLightGray,message") echo "Grigio chiaro" ;;
                "popupColorLightGray,description") echo "Colore predefinito per tema chiaro" ;;
                "popupColorWarmBeige,message") echo "Beige caldo" ;;
                "popupColorWarmBeige,description") echo "Colore predefinito per tema chiaro" ;;
                "popupColorSoftPurple,message") echo "Viola tenue" ;;
                "popupColorSoftPurple,description") echo "Colore predefinito per tema chiaro" ;;
                "popupColorMintGreen,message") echo "Verde menta" ;;
                "popupColorMintGreen,description") echo "Colore predefinito per tema chiaro" ;;
                "popupColorDefaultDark,message") echo "Scuro predefinito" ;;
                "popupColorDefaultDark,description") echo "Colore predefinito per tema scuro" ;;
                "popupColorSoftBlack,message") echo "Nero tenue" ;;
                "popupColorSoftBlack,description") echo "Colore predefinito per tema scuro" ;;
                "popupColorBlueGray,message") echo "Grigio blu" ;;
                "popupColorBlueGray,description") echo "Colore predefinito per tema scuro" ;;
                "popupColorNavyDark,message") echo "Blu navy" ;;
                "popupColorNavyDark,description") echo "Colore predefinito per tema scuro" ;;
                "popupColorCharcoal,message") echo "Antracite" ;;
                "popupColorCharcoal,description") echo "Colore predefinito per tema scuro" ;;
            esac
            ;;
        "ko")
            case "$field,$type" in
                "extensionName,message") echo "Google Calendar™ 이벤트 그라데이션 병합" ;;
                "extensionName,description") echo "중복 일정을 그라데이션으로 병합하는 확장 프로그램" ;;
                "extensionDescription,message") echo "중복 일정을 무지개색으로 병합하고 주말에 색상 적용" ;;
                "extensionDescription,description") echo "확장 프로그램의 주요 기능 설명" ;;
                "popupEnableExtension,message") echo "확장 프로그램 사용" ;;
                "popupEnableExtension,description") echo "확장 프로그램 켜기/끄기" ;;
                "popupGradientOpacity,message") echo "투명도" ;;
                "popupGradientOpacity,description") echo "투명도 조절" ;;
                "popupEnableWeekends,message") echo "주말 색상" ;;
                "popupEnableWeekends,description") echo "주말 색상 켜기/끄기" ;;
                "popupThemeSelect,message") echo "테마" ;;
                "popupThemeSelect,description") echo "테마 선택" ;;
                "popupThemeSystem,message") echo "시스템" ;;
                "popupThemeSystem,description") echo "시스템 테마 사용" ;;
                "popupThemeLight,message") echo "라이트" ;;
                "popupThemeLight,description") echo "라이트 테마" ;;
                "popupThemeDark,message") echo "다크" ;;
                "popupThemeDark,description") echo "다크 테마" ;;
                "popupLightThemeColor,message") echo "주말 색상 (라이트)" ;;
                "popupLightThemeColor,description") echo "라이트 테마의 주말 색상" ;;
                "popupDarkThemeColor,message") echo "주말 색상 (다크)" ;;
                "popupDarkThemeColor,description") echo "다크 테마의 주말 색상" ;;
                "popupColorCustom,message") echo "직접 선택..." ;;
                "popupColorCustom,description") echo "사용자 지정 색상" ;;
                "popupColorDefaultBlue,message") echo "기본 파란색" ;;
                "popupColorDefaultBlue,description") echo "라이트 테마 기본 색상" ;;
                "popupColorLightGray,message") echo "밝은 회색" ;;
                "popupColorLightGray,description") echo "라이트 테마 기본 색상" ;;
                "popupColorWarmBeige,message") echo "따뜻한 베이지" ;;
                "popupColorWarmBeige,description") echo "라이트 테마 기본 색상" ;;
                "popupColorSoftPurple,message") echo "부드러운 보라" ;;
                "popupColorSoftPurple,description") echo "라이트 테마 기본 색상" ;;
                "popupColorMintGreen,message") echo "민트" ;;
                "popupColorMintGreen,description") echo "라이트 테마 기본 색상" ;;
                "popupColorDefaultDark,message") echo "기본 다크" ;;
                "popupColorDefaultDark,description") echo "다크 테마 기본 색상" ;;
                "popupColorSoftBlack,message") echo "부드러운 검정" ;;
                "popupColorSoftBlack,description") echo "다크 테마 기본 색상" ;;
                "popupColorBlueGray,message") echo "블루그레이" ;;
                "popupColorBlueGray,description") echo "다크 테마 기본 색상" ;;
                "popupColorNavyDark,message") echo "네이비" ;;
                "popupColorNavyDark,description") echo "다크 테마 기본 색상" ;;
                "popupColorCharcoal,message") echo "차콜" ;;
                "popupColorCharcoal,description") echo "다크 테마 기본 색상" ;;
            esac
            ;;
            "nl")
            case "$field,$type" in
                "extensionName,message") echo "Kleurovergang voor Google Calendar™" ;;
                "extensionName,description") echo "Extensie die dubbele agenda-items samenvoegt met kleurovergangen" ;;
                "extensionDescription,message") echo "Voegt dubbele agenda-items samen in regenboogkleuren en kleurt weekenden" ;;
                "extensionDescription,description") echo "Uitleg van de hoofdfunctie van de extensie" ;;
                "popupEnableExtension,message") echo "Extensie inschakelen" ;;
                "popupEnableExtension,description") echo "Schakelaar voor de extensie" ;;
                "popupGradientOpacity,message") echo "Transparantie" ;;
                "popupGradientOpacity,description") echo "Transparantie aanpassen" ;;
                "popupEnableWeekends,message") echo "Weekenden kleuren" ;;
                "popupEnableWeekends,description") echo "Schakelaar voor weekendkleuring" ;;
                "popupThemeSelect,message") echo "Thema" ;;
                "popupThemeSelect,description") echo "Thema kiezen" ;;
                "popupThemeSystem,message") echo "Systeem" ;;
                "popupThemeSystem,description") echo "Systeemthema gebruiken" ;;
                "popupThemeLight,message") echo "Licht" ;;
                "popupThemeLight,description") echo "Licht thema" ;;
                "popupThemeDark,message") echo "Donker" ;;
                "popupThemeDark,description") echo "Donker thema" ;;
                "popupLightThemeColor,message") echo "Weekendkleur (Licht)" ;;
                "popupLightThemeColor,description") echo "Weekendkleur voor licht thema" ;;
                "popupDarkThemeColor,message") echo "Weekendkleur (Donker)" ;;
                "popupDarkThemeColor,description") echo "Weekendkleur voor donker thema" ;;
                "popupColorCustom,message") echo "Aangepast..." ;;
                "popupColorCustom,description") echo "Eigen kleur kiezen" ;;
                "popupColorDefaultBlue,message") echo "Standaardblauw" ;;
                "popupColorDefaultBlue,description") echo "Standaardkleur voor licht thema" ;;
                "popupColorLightGray,message") echo "Lichtgrijs" ;;
                "popupColorLightGray,description") echo "Standaardkleur voor licht thema" ;;
                "popupColorWarmBeige,message") echo "Warm beige" ;;
                "popupColorWarmBeige,description") echo "Standaardkleur voor licht thema" ;;
                "popupColorSoftPurple,message") echo "Zacht paars" ;;
                "popupColorSoftPurple,description") echo "Standaardkleur voor licht thema" ;;
                "popupColorMintGreen,message") echo "Mintgroen" ;;
                "popupColorMintGreen,description") echo "Standaardkleur voor licht thema" ;;
                "popupColorDefaultDark,message") echo "Standaarddonker" ;;
                "popupColorDefaultDark,description") echo "Standaardkleur voor donker thema" ;;
                "popupColorSoftBlack,message") echo "Zacht zwart" ;;
                "popupColorSoftBlack,description") echo "Standaardkleur voor donker thema" ;;
                "popupColorBlueGray,message") echo "Blauwgrijs" ;;
                "popupColorBlueGray,description") echo "Standaardkleur voor donker thema" ;;
                "popupColorNavyDark,message") echo "Marineblauw" ;;
                "popupColorNavyDark,description") echo "Standaardkleur voor donker thema" ;;
                "popupColorCharcoal,message") echo "Antraciet" ;;
                "popupColorCharcoal,description") echo "Standaardkleur voor donker thema" ;;
            esac
            ;;
        "pl")
            case "$field,$type" in
                "extensionName,message") echo "Gradientowe łączenie wydarzeń Google Calendar™" ;;
                "extensionName,description") echo "Rozszerzenie łączące powtarzające się wydarzenia z gradientem" ;;
                "extensionDescription,message") echo "Łączy powtarzające się wydarzenia w tęczę i koloruje weekendy" ;;
                "extensionDescription,description") echo "Opis głównej funkcji rozszerzenia" ;;
                "popupEnableExtension,message") echo "Włącz rozszerzenie" ;;
                "popupEnableExtension,description") echo "Przełącznik rozszerzenia" ;;
                "popupGradientOpacity,message") echo "Przezroczystość" ;;
                "popupGradientOpacity,description") echo "Regulacja przezroczystości" ;;
                "popupEnableWeekends,message") echo "Koloruj weekendy" ;;
                "popupEnableWeekends,description") echo "Przełącznik kolorowania weekendów" ;;
                "popupThemeSelect,message") echo "Motyw" ;;
                "popupThemeSelect,description") echo "Wybór motywu" ;;
                "popupThemeSystem,message") echo "Systemowy" ;;
                "popupThemeSystem,description") echo "Użyj motywu systemowego" ;;
                "popupThemeLight,message") echo "Jasny" ;;
                "popupThemeLight,description") echo "Jasny motyw" ;;
                "popupThemeDark,message") echo "Ciemny" ;;
                "popupThemeDark,description") echo "Ciemny motyw" ;;
                "popupLightThemeColor,message") echo "Kolor weekendów (Jasny)" ;;
                "popupLightThemeColor,description") echo "Kolor weekendów dla jasnego motywu" ;;
                "popupDarkThemeColor,message") echo "Kolor weekendów (Ciemny)" ;;
                "popupDarkThemeColor,description") echo "Kolor weekendów dla ciemnego motywu" ;;
                "popupColorCustom,message") echo "Własny..." ;;
                "popupColorCustom,description") echo "Wybierz własny kolor" ;;
                "popupColorDefaultBlue,message") echo "Domyślny niebieski" ;;
                "popupColorDefaultBlue,description") echo "Domyślny kolor dla jasnego motywu" ;;
                "popupColorLightGray,message") echo "Jasnoszary" ;;
                "popupColorLightGray,description") echo "Domyślny kolor dla jasnego motywu" ;;
                "popupColorWarmBeige,message") echo "Ciepły beż" ;;
                "popupColorWarmBeige,description") echo "Domyślny kolor dla jasnego motywu" ;;
                "popupColorSoftPurple,message") echo "Delikatny fiolet" ;;
                "popupColorSoftPurple,description") echo "Domyślny kolor dla jasnego motywu" ;;
                "popupColorMintGreen,message") echo "Miętowy" ;;
                "popupColorMintGreen,description") echo "Domyślny kolor dla jasnego motywu" ;;
                "popupColorDefaultDark,message") echo "Domyślny ciemny" ;;
                "popupColorDefaultDark,description") echo "Domyślny kolor dla ciemnego motywu" ;;
                "popupColorSoftBlack,message") echo "Delikatna czerń" ;;
                "popupColorSoftBlack,description") echo "Domyślny kolor dla ciemnego motywu" ;;
                "popupColorBlueGray,message") echo "Niebieskoszary" ;;
                "popupColorBlueGray,description") echo "Domyślny kolor dla ciemnego motywu" ;;
                "popupColorNavyDark,message") echo "Granatowy" ;;
                "popupColorNavyDark,description") echo "Domyślny kolor dla ciemnego motywu" ;;
                "popupColorCharcoal,message") echo "Antracyt" ;;
                "popupColorCharcoal,description") echo "Domyślny kolor dla ciemnego motywu" ;;
            esac
            ;;
            "tr")
            case "$field,$type" in
                "extensionName,message") echo "Google Calendar™ Etkinlikleri için Geçiş Efekti" ;;
                "extensionName,description") echo "Yinelenen etkinlikleri renk geçişleriyle birleştiren eklenti" ;;
                "extensionDescription,message") echo "Yinelenen etkinlikleri gökkuşağı renklerinde birleştirir ve haftasonlarını renklendirir" ;;
                "extensionDescription,description") echo "Eklentinin ana işlevinin açıklaması" ;;
                "popupEnableExtension,message") echo "Eklentiyi Etkinleştir" ;;
                "popupEnableExtension,description") echo "Eklenti açma/kapama düğmesi" ;;
                "popupGradientOpacity,message") echo "Şeffaflık" ;;
                "popupGradientOpacity,description") echo "Şeffaflık ayarı" ;;
                "popupEnableWeekends,message") echo "Haftasonlarını Renklendir" ;;
                "popupEnableWeekends,description") echo "Haftasonu renklendirme düğmesi" ;;
                "popupThemeSelect,message") echo "Tema" ;;
                "popupThemeSelect,description") echo "Tema seçimi" ;;
                "popupThemeSystem,message") echo "Sistem" ;;
                "popupThemeSystem,description") echo "Sistem temasını kullan" ;;
                "popupThemeLight,message") echo "Açık" ;;
                "popupThemeLight,description") echo "Açık tema" ;;
                "popupThemeDark,message") echo "Koyu" ;;
                "popupThemeDark,description") echo "Koyu tema" ;;
                "popupLightThemeColor,message") echo "Haftasonu Rengi (Açık)" ;;
                "popupLightThemeColor,description") echo "Açık tema için haftasonu rengi" ;;
                "popupDarkThemeColor,message") echo "Haftasonu Rengi (Koyu)" ;;
                "popupDarkThemeColor,description") echo "Koyu tema için haftasonu rengi" ;;
                "popupColorCustom,message") echo "Özel..." ;;
                "popupColorCustom,description") echo "Özel renk seçimi" ;;
                "popupColorDefaultBlue,message") echo "Varsayılan Mavi" ;;
                "popupColorDefaultBlue,description") echo "Açık tema için hazır renk" ;;
                "popupColorLightGray,message") echo "Açık Gri" ;;
                "popupColorLightGray,description") echo "Açık tema için hazır renk" ;;
                "popupColorWarmBeige,message") echo "Sıcak Bej" ;;
                "popupColorWarmBeige,description") echo "Açık tema için hazır renk" ;;
                "popupColorSoftPurple,message") echo "Yumuşak Mor" ;;
                "popupColorSoftPurple,description") echo "Açık tema için hazır renk" ;;
                "popupColorMintGreen,message") echo "Nane Yeşili" ;;
                "popupColorMintGreen,description") echo "Açık tema için hazır renk" ;;
                "popupColorDefaultDark,message") echo "Varsayılan Koyu" ;;
                "popupColorDefaultDark,description") echo "Koyu tema için hazır renk" ;;
                "popupColorSoftBlack,message") echo "Yumuşak Siyah" ;;
                "popupColorSoftBlack,description") echo "Koyu tema için hazır renk" ;;
                "popupColorBlueGray,message") echo "Mavi Gri" ;;
                "popupColorBlueGray,description") echo "Koyu tema için hazır renk" ;;
                "popupColorNavyDark,message") echo "Lacivert" ;;
                "popupColorNavyDark,description") echo "Koyu tema için hazır renk" ;;
                "popupColorCharcoal,message") echo "Antrasit" ;;
                "popupColorCharcoal,description") echo "Koyu tema için hazır renk" ;;
            esac
            ;;
        "vi")
            case "$field,$type" in
                "extensionName,message") echo "Trộn màu chuyển sắc cho Sự kiện Google Calendar™" ;;
                "extensionName,description") echo "Tiện ích mở rộng kết hợp sự kiện trùng lặp với hiệu ứng chuyển màu" ;;
                "extensionDescription,message") echo "Kết hợp các sự kiện trùng lặp thành cầu vồng và tô màu cuối tuần" ;;
                "extensionDescription,description") echo "Mô tả chức năng chính của tiện ích" ;;
                "popupEnableExtension,message") echo "Bật tiện ích" ;;
                "popupEnableExtension,description") echo "Nút bật/tắt tiện ích" ;;
                "popupGradientOpacity,message") echo "Độ trong suốt" ;;
                "popupGradientOpacity,description") echo "Điều chỉnh độ trong suốt" ;;
                "popupEnableWeekends,message") echo "Tô màu cuối tuần" ;;
                "popupEnableWeekends,description") echo "Nút tô màu cuối tuần" ;;
                "popupThemeSelect,message") echo "Giao diện" ;;
                "popupThemeSelect,description") echo "Chọn giao diện" ;;
                "popupThemeSystem,message") echo "Hệ thống" ;;
                "popupThemeSystem,description") echo "Dùng giao diện hệ thống" ;;
                "popupThemeLight,message") echo "Sáng" ;;
                "popupThemeLight,description") echo "Giao diện sáng" ;;
                "popupThemeDark,message") echo "Tối" ;;
                "popupThemeDark,description") echo "Giao diện tối" ;;
                "popupLightThemeColor,message") echo "Màu cuối tuần (Sáng)" ;;
                "popupLightThemeColor,description") echo "Màu cuối tuần cho giao diện sáng" ;;
                "popupDarkThemeColor,message") echo "Màu cuối tuần (Tối)" ;;
                "popupDarkThemeColor,description") echo "Màu cuối tuần cho giao diện tối" ;;
                "popupColorCustom,message") echo "Tùy chọn..." ;;
                "popupColorCustom,description") echo "Chọn màu tùy chỉnh" ;;
                "popupColorDefaultBlue,message") echo "Xanh mặc định" ;;
                "popupColorDefaultBlue,description") echo "Màu có sẵn cho giao diện sáng" ;;
                "popupColorLightGray,message") echo "Xám nhạt" ;;
                "popupColorLightGray,description") echo "Màu có sẵn cho giao diện sáng" ;;
                "popupColorWarmBeige,message") echo "Be ấm" ;;
                "popupColorWarmBeige,description") echo "Màu có sẵn cho giao diện sáng" ;;
                "popupColorSoftPurple,message") echo "Tím nhẹ" ;;
                "popupColorSoftPurple,description") echo "Màu có sẵn cho giao diện sáng" ;;
                "popupColorMintGreen,message") echo "Xanh bạc hà" ;;
                "popupColorMintGreen,description") echo "Màu có sẵn cho giao diện sáng" ;;
                "popupColorDefaultDark,message") echo "Tối mặc định" ;;
                "popupColorDefaultDark,description") echo "Màu có sẵn cho giao diện tối" ;;
                "popupColorSoftBlack,message") echo "Đen nhẹ" ;;
                "popupColorSoftBlack,description") echo "Màu có sẵn cho giao diện tối" ;;
                "popupColorBlueGray,message") echo "Xám xanh" ;;
                "popupColorBlueGray,description") echo "Màu có sẵn cho giao diện tối" ;;
                "popupColorNavyDark,message") echo "Xanh đen" ;;
                "popupColorNavyDark,description") echo "Màu có sẵn cho giao diện tối" ;;
                "popupColorCharcoal,message") echo "Than chì" ;;
                "popupColorCharcoal,description") echo "Màu có sẵn cho giao diện tối" ;;
            esac
            ;;
            "th")
            case "$field,$type" in
                "extensionName,message") echo "ผสานไล่ระดับสีสำหรับกิจกรรม Google Calendar™" ;;
                "extensionName,description") echo "ส่วนขยายที่ผสานกิจกรรมที่ซ้ำกันด้วยการไล่ระดับสี" ;;
                "extensionDescription,message") echo "ผสานกิจกรรมที่ซ้ำกันให้เป็นสีรุ้งและระบายสีวันหยุดสุดสัปดาห์" ;;
                "extensionDescription,description") echo "คำอธิบายฟังก์ชันหลักของส่วนขยาย" ;;
                "popupEnableExtension,message") echo "เปิดส่วนขยาย" ;;
                "popupEnableExtension,description") echo "ปุ่มเปิด/ปิดส่วนขยาย" ;;
                "popupGradientOpacity,message") echo "ความโปร่งใส" ;;
                "popupGradientOpacity,description") echo "ปรับความโปร่งใส" ;;
                "popupEnableWeekends,message") echo "ระบายสีวันหยุด" ;;
                "popupEnableWeekends,description") echo "ปุ่มระบายสีวันหยุด" ;;
                "popupThemeSelect,message") echo "ธีม" ;;
                "popupThemeSelect,description") echo "เลือกธีม" ;;
                "popupThemeSystem,message") echo "ระบบ" ;;
                "popupThemeSystem,description") echo "ใช้ธีมระบบ" ;;
                "popupThemeLight,message") echo "สว่าง" ;;
                "popupThemeLight,description") echo "ธีมสว่าง" ;;
                "popupThemeDark,message") echo "มืด" ;;
                "popupThemeDark,description") echo "ธีมมืด" ;;
                "popupLightThemeColor,message") echo "สีวันหยุด (สว่าง)" ;;
                "popupLightThemeColor,description") echo "เลือกสีวันหยุดสำหรับธีมสว่าง" ;;
                "popupDarkThemeColor,message") echo "สีวันหยุด (มืด)" ;;
                "popupDarkThemeColor,description") echo "เลือกสีวันหยุดสำหรับธีมมืด" ;;
                "popupColorCustom,message") echo "กำหนดเอง..." ;;
                "popupColorCustom,description") echo "เลือกสีเอง" ;;
                "popupColorDefaultBlue,message") echo "น้ำเงินมาตรฐาน" ;;
                "popupColorDefaultBlue,description") echo "สีมาตรฐานสำหรับธีมสว่าง" ;;
                "popupColorLightGray,message") echo "เทาอ่อน" ;;
                "popupColorLightGray,description") echo "สีมาตรฐานสำหรับธีมสว่าง" ;;
                "popupColorWarmBeige,message") echo "เบจอุ่น" ;;
                "popupColorWarmBeige,description") echo "สีมาตรฐานสำหรับธีมสว่าง" ;;
                "popupColorSoftPurple,message") echo "ม่วงอ่อน" ;;
                "popupColorSoftPurple,description") echo "สีมาตรฐานสำหรับธีมสว่าง" ;;
                "popupColorMintGreen,message") echo "เขียวมิ้นท์" ;;
                "popupColorMintGreen,description") echo "สีมาตรฐานสำหรับธีมสว่าง" ;;
                "popupColorDefaultDark,message") echo "มืดมาตรฐาน" ;;
                "popupColorDefaultDark,description") echo "สีมาตรฐานสำหรับธีมมืด" ;;
                "popupColorSoftBlack,message") echo "ดำอ่อน" ;;
                "popupColorSoftBlack,description") echo "สีมาตรฐานสำหรับธีมมืด" ;;
                "popupColorBlueGray,message") echo "เทาน้ำเงิน" ;;
                "popupColorBlueGray,description") echo "สีมาตรฐานสำหรับธีมมืด" ;;
                "popupColorNavyDark,message") echo "กรมท่ามืด" ;;
                "popupColorNavyDark,description") echo "สีมาตรฐานสำหรับธีมมืด" ;;
                "popupColorCharcoal,message") echo "เทาเข้ม" ;;
                "popupColorCharcoal,description") echo "สีมาตรฐานสำหรับธีมมืด" ;;
            esac
            ;;
        "id")
            case "$field,$type" in
                "extensionName,message") echo "Penggabungan Gradien untuk Google Calendar™" ;;
                "extensionName,description") echo "Ekstensi yang menggabungkan acara berulang dengan gradien" ;;
                "extensionDescription,message") echo "Menggabungkan acara berulang menjadi pelangi dan mewarnai akhir pekan" ;;
                "extensionDescription,description") echo "Penjelasan fungsi utama ekstensi" ;;
                "popupEnableExtension,message") echo "Aktifkan Ekstensi" ;;
                "popupEnableExtension,description") echo "Tombol aktif/nonaktif ekstensi" ;;
                "popupGradientOpacity,message") echo "Transparansi" ;;
                "popupGradientOpacity,description") echo "Pengaturan transparansi" ;;
                "popupEnableWeekends,message") echo "Warnai Akhir Pekan" ;;
                "popupEnableWeekends,description") echo "Tombol pewarnaan akhir pekan" ;;
                "popupThemeSelect,message") echo "Tema" ;;
                "popupThemeSelect,description") echo "Pilihan tema" ;;
                "popupThemeSystem,message") echo "Sistem" ;;
                "popupThemeSystem,description") echo "Gunakan tema sistem" ;;
                "popupThemeLight,message") echo "Terang" ;;
                "popupThemeLight,description") echo "Tema terang" ;;
                "popupThemeDark,message") echo "Gelap" ;;
                "popupThemeDark,description") echo "Tema gelap" ;;
                "popupLightThemeColor,message") echo "Warna Akhir Pekan (Terang)" ;;
                "popupLightThemeColor,description") echo "Warna akhir pekan untuk tema terang" ;;
                "popupDarkThemeColor,message") echo "Warna Akhir Pekan (Gelap)" ;;
                "popupDarkThemeColor,description") echo "Warna akhir pekan untuk tema gelap" ;;
                "popupColorCustom,message") echo "Kustom..." ;;
                "popupColorCustom,description") echo "Pilih warna sendiri" ;;
                "popupColorDefaultBlue,message") echo "Biru Default" ;;
                "popupColorDefaultBlue,description") echo "Warna preset untuk tema terang" ;;
                "popupColorLightGray,message") echo "Abu-abu Terang" ;;
                "popupColorLightGray,description") echo "Warna preset untuk tema terang" ;;
                "popupColorWarmBeige,message") echo "Beige Hangat" ;;
                "popupColorWarmBeige,description") echo "Warna preset untuk tema terang" ;;
                "popupColorSoftPurple,message") echo "Ungu Lembut" ;;
                "popupColorSoftPurple,description") echo "Warna preset untuk tema terang" ;;
                "popupColorMintGreen,message") echo "Hijau Mint" ;;
                "popupColorMintGreen,description") echo "Warna preset untuk tema terang" ;;
                "popupColorDefaultDark,message") echo "Gelap Default" ;;
                "popupColorDefaultDark,description") echo "Warna preset untuk tema gelap" ;;
                "popupColorSoftBlack,message") echo "Hitam Lembut" ;;
                "popupColorSoftBlack,description") echo "Warna preset untuk tema gelap" ;;
                "popupColorBlueGray,message") echo "Abu-abu Biru" ;;
                "popupColorBlueGray,description") echo "Warna preset untuk tema gelap" ;;
                "popupColorNavyDark,message") echo "Biru Tua" ;;
                "popupColorNavyDark,description") echo "Warna preset untuk tema gelap" ;;
                "popupColorCharcoal,message") echo "Arang" ;;
                "popupColorCharcoal,description") echo "Warna preset untuk tema gelap" ;;
            esac
            ;;
            "uk")
            case "$field,$type" in
                "extensionName,message") echo "Градієнтне об'єднання подій Google Calendar™" ;;
                "extensionName,description") echo "Розширення для об'єднання повторюваних подій з градієнтами" ;;
                "extensionDescription,message") echo "Об'єднує повторювані події у веселку та розфарбовує вихідні" ;;
                "extensionDescription,description") echo "Опис основної функції розширення" ;;
                "popupEnableExtension,message") echo "Увімкнути розширення" ;;
                "popupEnableExtension,description") echo "Перемикач розширення" ;;
                "popupGradientOpacity,message") echo "Прозорість" ;;
                "popupGradientOpacity,description") echo "Налаштування прозорості" ;;
                "popupEnableWeekends,message") echo "Розфарбувати вихідні" ;;
                "popupEnableWeekends,description") echo "Перемикач розфарбовування вихідних" ;;
                "popupThemeSelect,message") echo "Тема" ;;
                "popupThemeSelect,description") echo "Вибір теми" ;;
                "popupThemeSystem,message") echo "Системна" ;;
                "popupThemeSystem,description") echo "Використовувати системну тему" ;;
                "popupThemeLight,message") echo "Світла" ;;
                "popupThemeLight,description") echo "Світла тема" ;;
                "popupThemeDark,message") echo "Темна" ;;
                "popupThemeDark,description") echo "Темна тема" ;;
                "popupLightThemeColor,message") echo "Колір вихідних (Світла)" ;;
                "popupLightThemeColor,description") echo "Колір вихідних для світлої теми" ;;
                "popupDarkThemeColor,message") echo "Колір вихідних (Темна)" ;;
                "popupDarkThemeColor,description") echo "Колір вихідних для темної теми" ;;
                "popupColorCustom,message") echo "Власний..." ;;
                "popupColorCustom,description") echo "Обрати власний колір" ;;
                "popupColorDefaultBlue,message") echo "Базовий синій" ;;
                "popupColorDefaultBlue,description") echo "Стандартний колір для світлої теми" ;;
                "popupColorLightGray,message") echo "Світло-сірий" ;;
                "popupColorLightGray,description") echo "Стандартний колір для світлої теми" ;;
                "popupColorWarmBeige,message") echo "Теплий бежевий" ;;
                "popupColorWarmBeige,description") echo "Стандартний колір для світлої теми" ;;
                "popupColorSoftPurple,message") echo "М'який фіолетовий" ;;
                "popupColorSoftPurple,description") echo "Стандартний колір для світлої теми" ;;
                "popupColorMintGreen,message") echo "М'ятний" ;;
                "popupColorMintGreen,description") echo "Стандартний колір для світлої теми" ;;
                "popupColorDefaultDark,message") echo "Базовий темний" ;;
                "popupColorDefaultDark,description") echo "Стандартний колір для темної теми" ;;
                "popupColorSoftBlack,message") echo "М'який чорний" ;;
                "popupColorSoftBlack,description") echo "Стандартний колір для темної теми" ;;
                "popupColorBlueGray,message") echo "Синьо-сірий" ;;
                "popupColorBlueGray,description") echo "Стандартний колір для темної теми" ;;
                "popupColorNavyDark,message") echo "Темно-синій" ;;
                "popupColorNavyDark,description") echo "Стандартний колір для темної теми" ;;
                "popupColorCharcoal,message") echo "Вугільний" ;;
                "popupColorCharcoal,description") echo "Стандартний колір для темної теми" ;;
            esac
            ;;
        "ro")
            case "$field,$type" in
                "extensionName,message") echo "Fuziune în gradient pentru Google Calendar™" ;;
                "extensionName,description") echo "Extensie pentru combinarea evenimentelor duplicate cu gradiente" ;;
                "extensionDescription,message") echo "Combină evenimentele duplicate într-un curcubeu și colorează weekendurile" ;;
                "extensionDescription,description") echo "Descrierea funcției principale a extensiei" ;;
                "popupEnableExtension,message") echo "Activare extensie" ;;
                "popupEnableExtension,description") echo "Comutator pentru extensie" ;;
                "popupGradientOpacity,message") echo "Transparență" ;;
                "popupGradientOpacity,description") echo "Reglare transparență" ;;
                "popupEnableWeekends,message") echo "Colorare weekenduri" ;;
                "popupEnableWeekends,description") echo "Comutator pentru colorarea weekendurilor" ;;
                "popupThemeSelect,message") echo "Temă" ;;
                "popupThemeSelect,description") echo "Selectare temă" ;;
                "popupThemeSystem,message") echo "Sistem" ;;
                "popupThemeSystem,description") echo "Folosește tema sistemului" ;;
                "popupThemeLight,message") echo "Luminoasă" ;;
                "popupThemeLight,description") echo "Temă luminoasă" ;;
                "popupThemeDark,message") echo "Întunecată" ;;
                "popupThemeDark,description") echo "Temă întunecată" ;;
                "popupLightThemeColor,message") echo "Culoare weekend (Luminoasă)" ;;
                "popupLightThemeColor,description") echo "Culoarea weekendului pentru tema luminoasă" ;;
                "popupDarkThemeColor,message") echo "Culoare weekend (Întunecată)" ;;
                "popupDarkThemeColor,description") echo "Culoarea weekendului pentru tema întunecată" ;;
                "popupColorCustom,message") echo "Personalizată..." ;;
                "popupColorCustom,description") echo "Alege o culoare personalizată" ;;
                "popupColorDefaultBlue,message") echo "Albastru implicit" ;;
                "popupColorDefaultBlue,description") echo "Culoare predefinită pentru tema luminoasă" ;;
                "popupColorLightGray,message") echo "Gri deschis" ;;
                "popupColorLightGray,description") echo "Culoare predefinită pentru tema luminoasă" ;;
                "popupColorWarmBeige,message") echo "Bej cald" ;;
                "popupColorWarmBeige,description") echo "Culoare predefinită pentru tema luminoasă" ;;
                "popupColorSoftPurple,message") echo "Violet delicat" ;;
                "popupColorSoftPurple,description") echo "Culoare predefinită pentru tema luminoasă" ;;
                "popupColorMintGreen,message") echo "Verde mentă" ;;
                "popupColorMintGreen,description") echo "Culoare predefinită pentru tema luminoasă" ;;
                "popupColorDefaultDark,message") echo "Întunecat implicit" ;;
                "popupColorDefaultDark,description") echo "Culoare predefinită pentru tema întunecată" ;;
                "popupColorSoftBlack,message") echo "Negru delicat" ;;
                "popupColorSoftBlack,description") echo "Culoare predefinită pentru tema întunecată" ;;
                "popupColorBlueGray,message") echo "Gri-albăstrui" ;;
                "popupColorBlueGray,description") echo "Culoare predefinită pentru tema întunecată" ;;
                "popupColorNavyDark,message") echo "Bleumarin închis" ;;
                "popupColorNavyDark,description") echo "Culoare predefinită pentru tema întunecată" ;;
                "popupColorCharcoal,message") echo "Antracit" ;;
                "popupColorCharcoal,description") echo "Culoare predefinită pentru tema întunecată" ;;
            esac
            ;;
    esac
}
# Function to create locale file
create_locale() {
    local lang=$1
    mkdir -p "_locales/$lang"
    
    # Start JSON file
    echo "{" > "_locales/$lang/messages.json"
    
    # Add each field
    local first=true
    for field in "${!FIELDS[@]}"; do
        IFS=',' read -r fieldName type <<< "$field"
        if [[ $type == "message" ]]; then
            if [ "$first" = true ]; then
                first=false
            else
                echo "," >> "_locales/$lang/messages.json"
            fi
            cat >> "_locales/$lang/messages.json" << EOF
  "$fieldName": {
    "message": "$(get_field_content "$lang" "$fieldName" "message")",
    "description": "$(get_field_content "$lang" "$fieldName" "description")"
  }
EOF
        fi
    done
    
    # Close JSON file
    echo -e "\n}" >> "_locales/$lang/messages.json"
    
    echo "Created localization for $lang"
}

# Create locales for all languages
LANGUAGES=("en" "es" "zh-CN" "hi-IN" "ar-001" "pt" "ru" "ja" "de" "fr" "it" "ko" "nl" "pl" "tr" "vi" "th" "id" "uk" "ro")

for lang in "${LANGUAGES[@]}"; do
    create_locale "$lang"
done

echo "Localization files have been created successfully!"