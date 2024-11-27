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
                "extensionName,message") echo "Fusión Degradada para Eventos de Google Calendar™" ;;
                "extensionName,description") echo "Nombre de la extensión que fusiona eventos duplicados del calendario con degradados." ;;
                "extensionDescription,message") echo "Combina eventos duplicados de Google Calendar en un arcoíris y colorea los fines de semana" ;;
                "extensionDescription,description") echo "Descripción que explica la funcionalidad principal de la extensión." ;;
                "popupEnableExtension,message") echo "Activar Extensión" ;;
                "popupEnableExtension,description") echo "Etiqueta para el interruptor de activar/desactivar la extensión" ;;
                "popupGradientOpacity,message") echo "Opacidad del Degradado" ;;
                "popupGradientOpacity,description") echo "Etiqueta para el control deslizante de opacidad del degradado" ;;
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
                "extensionName,description") echo "合并具有渐变效果的重复日历事件的扩展名称。" ;;
                "extensionDescription,message") echo "将重复的 Google Calendar 事件合并为彩虹效果并为周末着色" ;;
                "extensionDescription,description") echo "解释扩展主要功能的描述。" ;;
                "popupEnableExtension,message") echo "启用扩展" ;;
                "popupEnableExtension,description") echo "扩展启用/禁用开关的标签" ;;
                "popupGradientOpacity,message") echo "渐变不透明度" ;;
                "popupGradientOpacity,description") echo "渐变不透明度滑块的标签" ;;
                "popupEnableWeekends,message") echo "为周末着色" ;;
                "popupEnableWeekends,description") echo "周末着色开关的标签" ;;
                "popupThemeSelect,message") echo "主题" ;;
                "popupThemeSelect,description") echo "主题选择下拉菜单的标签" ;;
                "popupThemeSystem,message") echo "系统默认" ;;
                "popupThemeSystem,description") echo "使用系统主题设置的选项" ;;
                "popupThemeLight,message") echo "浅色" ;;
                "popupThemeLight,description") echo "浅色主题选项" ;;
                "popupThemeDark,message") echo "深色" ;;
                "popupThemeDark,description") echo "深色主题选项" ;;
                "popupLightThemeColor,message") echo "周末颜色（浅色主题）" ;;
                "popupLightThemeColor,description") echo "浅色主题周末颜色选择的标签" ;;
                "popupDarkThemeColor,message") echo "周末颜色（深色主题）" ;;
                "popupDarkThemeColor,description") echo "深色主题周末颜色选择的标签" ;;
                "popupColorCustom,message") echo "自定义..." ;;
                "popupColorCustom,description") echo "自定义颜色选择选项" ;;
                "popupColorDefaultBlue,message") echo "默认蓝色" ;;
                "popupColorDefaultBlue,description") echo "浅色主题的预设颜色选项" ;;
                "popupColorLightGray,message") echo "浅灰色" ;;
                "popupColorLightGray,description") echo "浅色主题的预设颜色选项" ;;
                "popupColorWarmBeige,message") echo "暖米色" ;;
                "popupColorWarmBeige,description") echo "浅色主题的预设颜色选项" ;;
                "popupColorSoftPurple,message") echo "柔紫色" ;;
                "popupColorSoftPurple,description") echo "浅色主题的预设颜色选项" ;;
                "popupColorMintGreen,message") echo "薄荷绿" ;;
                "popupColorMintGreen,description") echo "浅色主题的预设颜色选项" ;;
                "popupColorDefaultDark,message") echo "默认深色" ;;
                "popupColorDefaultDark,description") echo "深色主题的预设颜色选项" ;;
                "popupColorSoftBlack,message") echo "柔黑色" ;;
                "popupColorSoftBlack,description") echo "深色主题的预设颜色选项" ;;
                "popupColorBlueGray,message") echo "蓝灰色" ;;
                "popupColorBlueGray,description") echo "深色主题的预设颜色选项" ;;
                "popupColorNavyDark,message") echo "深海军蓝" ;;
                "popupColorNavyDark,description") echo "深色主题的预设颜色选项" ;;
                "popupColorCharcoal,message") echo "炭黑色" ;;
                "popupColorCharcoal,description") echo "深色主题的预设颜色选项" ;;
            esac
            ;;
        "hi-IN")
            case "$field,$type" in
                "extensionName,message") echo "Google Calendar™ इवेंट्स के लिए ग्रेडिएंट मर्ज" ;;
                "extensionName,description") echo "ग्रेडिएंट के साथ डुप्लिकेट कैलेंडर इवेंट्स को मर्ज करने वाले एक्सटेंशन का नाम।" ;;
                "extensionDescription,message") echo "डुप्लिकेट Google Calendar इवेंट्स को एक इंद्रधनुष में मिलाता है और सप्ताहांत को रंगता है" ;;
                "extensionDescription,description") echo "एक्सटेंशन की मुख्य कार्यक्षमता की व्याख्या करने वाला विवरण।" ;;
                "popupEnableExtension,message") echo "एक्सटेंशन सक्षम करें" ;;
                "popupEnableExtension,description") echo "एक्सटेंशन सक्षम/अक्षम टॉगल स्विच के लिए लेबल" ;;
                "popupGradientOpacity,message") echo "ग्रेडिएंट अपारदर्शिता" ;;
                "popupGradientOpacity,description") echo "ग्रेडिएंट अपारदर्शिता स्लाइडर के लिए लेबल" ;;
                "popupEnableWeekends,message") echo "सप्ताहांत को रंगें" ;;
                "popupEnableWeekends,description") echo "सप्ताहांत रंगने के टॉगल स्विच के लिए लेबल" ;;
                "popupThemeSelect,message") echo "थीम" ;;
                "popupThemeSelect,description") echo "थीम चयन ड्रॉपडाउन के लिए लेबल" ;;
                "popupThemeSystem,message") echo "सिस्टम डिफ़ॉल्ट" ;;
                "popupThemeSystem,description") echo "सिस्टम थीम सेटिंग्स का उपयोग करने का विकल्प" ;;
                "popupThemeLight,message") echo "लाइट" ;;
                "popupThemeLight,description") echo "लाइट थीम के लिए विकल्प" ;;
                "popupThemeDark,message") echo "डार्क" ;;
                "popupThemeDark,description") echo "डार्क थीम के लिए विकल्प" ;;
                "popupLightThemeColor,message") echo "सप्ताहांत का रंग (लाइट थीम)" ;;
                "popupLightThemeColor,description") echo "लाइट थीम सप्ताहांत रंग चयन के लिए लेबल" ;;
                "popupDarkThemeColor,message") echo "सप्ताहांत का रंग (डार्क थीम)" ;;
                "popupDarkThemeColor,description") echo "डार्क थीम सप्ताहांत रंग चयन के लिए लेबल" ;;
                "popupColorCustom,message") echo "कस्टम..." ;;
                "popupColorCustom,description") echo "कस्टम रंग चयन का विकल्प" ;;
                "popupColorDefaultBlue,message") echo "डिफ़ॉल्ट नीला" ;;
                "popupColorDefaultBlue,description") echo "लाइट थीम के लिए पूर्वनिर्धारित रंग विकल्प" ;;
                "popupColorLightGray,message") echo "हल्का ग्रे" ;;
                "popupColorLightGray,description") echo "लाइट थीम के लिए पूर्वनिर्धारित रंग विकल्प" ;;
                "popupColorWarmBeige,message") echo "गर्म बेज" ;;
                "popupColorWarmBeige,description") echo "लाइट थीम के लिए पूर्वनिर्धारित रंग विकल्प" ;;
                "popupColorSoftPurple,message") echo "मुलायम बैंगनी" ;;
                "popupColorSoftPurple,description") echo "लाइट थीम के लिए पूर्वनिर्धारित रंग विकल्प" ;;
                "popupColorMintGreen,message") echo "मिंट हरा" ;;
                "popupColorMintGreen,description") echo "लाइट थीम के लिए पूर्वनिर्धारित रंग विकल्प" ;;
                "popupColorDefaultDark,message") echo "डिफ़ॉल्ट डार्क" ;;
                "popupColorDefaultDark,description") echo "डार्क थीम के लिए पूर्वनिर्धारित रंग विकल्प" ;;
                "popupColorSoftBlack,message") echo "मुलायम काला" ;;
                "popupColorSoftBlack,description") echo "डार्क थीम के लिए पूर्वनिर्धारित रंग विकल्प" ;;
                "popupColorBlueGray,message") echo "नीला ग्रे" ;;
                "popupColorBlueGray,description") echo "डार्क थीम के लिए पूर्वनिर्धारित रंग विकल्प" ;;
                "popupColorNavyDark,message") echo "नेवी डार्क" ;;
                "popupColorNavyDark,description") echo "डार्क थीम के लिए पूर्वनिर्धारित रंग विकल्प" ;;
                "popupColorCharcoal,message") echo "चारकोल" ;;
                "popupColorCharcoal,description") echo "डार्क थीम के लिए पूर्वनिर्धारित रंग विकल्प" ;;
            esac
            ;;
        "ar-001")
            case "$field,$type" in
                "extensionName,message") echo "دمج متدرج لأحداث Google Calendar™" ;;
                "extensionName,description") echo "اسم الإضافة التي تدمج أحداث التقويم المكررة مع التدرجات." ;;
                "extensionDescription,message") echo "يدمج أحداث Google Calendar المكررة في قوس قزح ويلون عطلات نهاية الأسبوع" ;;
                "extensionDescription,description") echo "وصف يشرح الوظيفة الرئيسية للإضافة." ;;
                "popupEnableExtension,message") echo "تمكين الإضافة" ;;
                "popupEnableExtension,description") echo "تسمية لمفتاح تشغيل/إيقاف الإضافة" ;;
                "popupGradientOpacity,message") echo "شفافية التدرج" ;;
                "popupGradientOpacity,description") echo "تسمية لشريط تمرير شفافية التدرج" ;;
                "popupEnableWeekends,message") echo "تلوين عطلات نهاية الأسبوع" ;;
                "popupEnableWeekends,description") echo "تسمية لمفتاح تلوين عطلات نهاية الأسبوع" ;;
                "popupThemeSelect,message") echo "السمة" ;;
                "popupThemeSelect,description") echo "تسمية لقائمة اختيار السمة" ;;
                "popupThemeSystem,message") echo "افتراضي النظام" ;;
                "popupThemeSystem,description") echo "خيار لاستخدام إعدادات سمة النظام" ;;
                "popupThemeLight,message") echo "فاتح" ;;
                "popupThemeLight,description") echo "خيار للسمة الفاتحة" ;;
                "popupThemeDark,message") echo "داكن" ;;
                "popupThemeDark,description") echo "خيار للسمة الداكنة" ;;
                "popupLightThemeColor,message") echo "لون نهاية الأسبوع (السمة الفاتحة)" ;;
                "popupLightThemeColor,description") echo "تسمية لاختيار لون نهاية الأسبوع في السمة الفاتحة" ;;
                "popupDarkThemeColor,message") echo "لون نهاية الأسبوع (السمة الداكنة)" ;;
                "popupDarkThemeColor,description") echo "تسمية لاختيار لون نهاية الأسبوع في السمة الداكنة" ;;
                "popupColorCustom,message") echo "مخصص..." ;;
                "popupColorCustom,description") echo "خيار لاختيار لون مخصص" ;;
                "popupColorDefaultBlue,message") echo "الأزرق الافتراضي" ;;
                "popupColorDefaultBlue,description") echo "خيار اللون المعد مسبقًا للسمة الفاتحة" ;;
                "popupColorLightGray,message") echo "رمادي فاتح" ;;
                "popupColorLightGray,description") echo "خيار اللون المعد مسبقًا للسمة الفاتحة" ;;
                "popupColorWarmBeige,message") echo "بيج دافئ" ;;
                "popupColorWarmBeige,description") echo "خيار اللون المعد مسبقًا للسمة الفاتحة" ;;
                "popupColorSoftPurple,message") echo "بنفسجي ناعم" ;;
                "popupColorSoftPurple,description") echo "خيار اللون المعد مسبقًا للسمة الفاتحة" ;;
                "popupColorMintGreen,message") echo "أخضر نعناعي" ;;
                "popupColorMintGreen,description") echo "خيار اللون المعد مسبقًا للسمة الفاتحة" ;;
                "popupColorDefaultDark,message") echo "الداكن الافتراضي" ;;
                "popupColorDefaultDark,description") echo "خيار اللون المعد مسبقًا للسمة الداكنة" ;;
                "popupColorSoftBlack,message") echo "أسود ناعم" ;;
                "popupColorSoftBlack,description") echo "خيار اللون المعد مسبقًا للسمة الداكنة" ;;
                "popupColorBlueGray,message") echo "رمادي مزرق" ;;
                "popupColorBlueGray,description") echo "خيار اللون المعد مسبقًا للسمة الداكنة" ;;
                "popupColorNavyDark,message") echo "كحلي داكن" ;;
                "popupColorNavyDark,description") echo "خيار اللون المعد مسبقًا للسمة الداكنة" ;;
                "popupColorCharcoal,message") echo "فحمي" ;;
                "popupColorCharcoal,description") echo "خيار اللون المعد مسبقًا للسمة الداكنة" ;;
            esac
            ;;
        "pt")
            case "$field,$type" in
                "extensionName,message") echo "Mesclagem Gradiente para Eventos do Google Calendar™" ;;
                "extensionName,description") echo "Nome da extensão que mescla eventos duplicados do calendário com gradientes." ;;
                "extensionDescription,message") echo "Mescla eventos duplicados do Google Calendar em um arco-íris e colore os fins de semana" ;;
                "extensionDescription,description") echo "Descrição explicando a funcionalidade principal da extensão." ;;
                "popupEnableExtension,message") echo "Ativar Extensão" ;;
                "popupEnableExtension,description") echo "Rótulo para o interruptor de ativar/desativar a extensão" ;;
                "popupGradientOpacity,message") echo "Opacidade do Gradiente" ;;
                "popupGradientOpacity,description") echo "Rótulo para o controle deslizante de opacidade do gradiente" ;;
                "popupEnableWeekends,message") echo "Colorir Fins de Semana" ;;
                "popupEnableWeekends,description") echo "Rótulo para o interruptor de coloração dos fins de semana" ;;
                "popupThemeSelect,message") echo "Tema" ;;
                "popupThemeSelect,description") echo "Rótulo para a seleção de tema" ;;
                "popupThemeSystem,message") echo "Padrão do Sistema" ;;
                "popupThemeSystem,description") echo "Opção para usar as configurações de tema do sistema" ;;
                "popupThemeLight,message") echo "Claro" ;;
                "popupThemeLight,description") echo "Opção para tema claro" ;;
                "popupThemeDark,message") echo "Escuro" ;;
                "popupThemeDark,description") echo "Opção para tema escuro" ;;
                "popupLightThemeColor,message") echo "Cor do Fim de Semana (Tema Claro)" ;;
                "popupLightThemeColor,description") echo "Rótulo para seleção de cor do fim de semana no tema claro" ;;
                "popupDarkThemeColor,message") echo "Cor do Fim de Semana (Tema Escuro)" ;;
                "popupDarkThemeColor,description") echo "Rótulo para seleção de cor do fim de semana no tema escuro" ;;
                "popupColorCustom,message") echo "Personalizado..." ;;
                "popupColorCustom,description") echo "Opção para seleção de cor personalizada" ;;
                "popupColorDefaultBlue,message") echo "Azul Padrão" ;;
                "popupColorDefaultBlue,description") echo "Opção de cor predefinida para tema claro" ;;
                "popupColorLightGray,message") echo "Cinza Claro" ;;
                "popupColorLightGray,description") echo "Opção de cor predefinida para tema claro" ;;
                "popupColorWarmBeige,message") echo "Bege Quente" ;;
                "popupColorWarmBeige,description") echo "Opção de cor predefinida para tema claro" ;;
                "popupColorSoftPurple,message") echo "Roxo Suave" ;;
                "popupColorSoftPurple,description") echo "Opção de cor predefinida para tema claro" ;;
                "popupColorMintGreen,message") echo "Verde Menta" ;;
                "popupColorMintGreen,description") echo "Opção de cor predefinida para tema claro" ;;
                "popupColorDefaultDark,message") echo "Escuro Padrão" ;;
                "popupColorDefaultDark,description") echo "Opção de cor predefinida para tema escuro" ;;
                "popupColorSoftBlack,message") echo "Preto Suave" ;;
                "popupColorSoftBlack,description") echo "Opção de cor predefinida para tema escuro" ;;
                "popupColorBlueGray,message") echo "Cinza Azulado" ;;
                "popupColorBlueGray,description") echo "Opção de cor predefinida para tema escuro" ;;
                "popupColorNavyDark,message") echo "Azul Marinho Escuro" ;;
                "popupColorNavyDark,description") echo "Opção de cor predefinida para tema escuro" ;;
                "popupColorCharcoal,message") echo "Carvão" ;;
                "popupColorCharcoal,description") echo "Opção de cor predefinida para tema escuro" ;;
            esac
            ;;
        "ru")
            case "$field,$type" in
                "extensionName,message") echo "Градиентное объединение событий Google Calendar™" ;;
                "extensionName,description") echo "Название расширения, объединяющего повторяющиеся события календаря с градиентами." ;;
                "extensionDescription,message") echo "Объединяет повторяющиеся события Google Calendar в радугу и окрашивает выходные" ;;
                "extensionDescription,description") echo "Описание, объясняющее основную функциональность расширения." ;;
                "popupEnableExtension,message") echo "Включить Расширение" ;;
                "popupEnableExtension,description") echo "Метка для переключателя включения/выключения расширения" ;;
                "popupGradientOpacity,message") echo "Прозрачность Градиента" ;;
                "popupGradientOpacity,description") echo "Метка для ползунка прозрачности градиента" ;;
                "popupEnableWeekends,message") echo "Окрашивать Выходные" ;;
                "popupEnableWeekends,description") echo "Метка для переключателя окрашивания выходных" ;;
                "popupThemeSelect,message") echo "Тема" ;;
                "popupThemeSelect,description") echo "Метка для выбора темы" ;;
                "popupThemeSystem,message") echo "Системная" ;;
                "popupThemeSystem,description") echo "Использовать системные настройки темы" ;;
                "popupThemeLight,message") echo "Светлая" ;;
                "popupThemeLight,description") echo "Опция светлой темы" ;;
                "popupThemeDark,message") echo "Тёмная" ;;
                "popupThemeDark,description") echo "Опция тёмной темы" ;;
                "popupLightThemeColor,message") echo "Цвет выходных (Светлая тема)" ;;
                "popupLightThemeColor,description") echo "Метка для выбора цвета выходных в светлой теме" ;;
                "popupDarkThemeColor,message") echo "Цвет выходных (Тёмная тема)" ;;
                "popupDarkThemeColor,description") echo "Метка для выбора цвета выходных в тёмной теме" ;;
                "popupColorCustom,message") echo "Свой..." ;;
                "popupColorCustom,description") echo "Опция для выбора пользовательского цвета" ;;
                "popupColorDefaultBlue,message") echo "Стандартный синий" ;;
                "popupColorDefaultBlue,description") echo "Предустановленный цвет для светлой темы" ;;
                "popupColorLightGray,message") echo "Светло-серый" ;;
                "popupColorLightGray,description") echo "Предустановленный цвет для светлой темы" ;;
                "popupColorWarmBeige,message") echo "Тёплый бежевый" ;;
                "popupColorWarmBeige,description") echo "Предустановленный цвет для светлой темы" ;;
                "popupColorSoftPurple,message") echo "Нежно-фиолетовый" ;;
                "popupColorSoftPurple,description") echo "Предустановленный цвет для светлой темы" ;;
                "popupColorMintGreen,message") echo "Мятно-зелёный" ;;
                "popupColorMintGreen,description") echo "Предустановленный цвет для светлой темы" ;;
                "popupColorDefaultDark,message") echo "Стандартный тёмный" ;;
                "popupColorDefaultDark,description") echo "Предустановленный цвет для тёмной темы" ;;
                "popupColorSoftBlack,message") echo "Мягкий чёрный" ;;
                "popupColorSoftBlack,description") echo "Предустановленный цвет для тёмной темы" ;;
                "popupColorBlueGray,message") echo "Сине-серый" ;;
                "popupColorBlueGray,description") echo "Предустановленный цвет для тёмной темы" ;;
                "popupColorNavyDark,message") echo "Тёмно-синий" ;;
                "popupColorNavyDark,description") echo "Предустановленный цвет для тёмной темы" ;;
                "popupColorCharcoal,message") echo "Угольный" ;;
                "popupColorCharcoal,description") echo "Предустановленный цвет для тёмной темы" ;;
            esac
            ;;
        "ja")
            case "$field,$type" in
                "extensionName,message") echo "Google Calendar™ イベントのグラデーションマージ" ;;
                "extensionName,description") echo "グラデーションで重複カレンダーイベントをマージする拡張機能の名前。" ;;
                "extensionDescription,message") echo "重複する Google Calendar のイベントを1つの虹色にマージし、週末に色を付けます" ;;
                "extensionDescription,description") echo "拡張機能の主な機能を説明する説明文。" ;;
                "popupEnableExtension,message") echo "拡張機能を有効にする" ;;
                "popupEnableExtension,description") echo "拡張機能の有効/無効を切り替えるスイッチのラベル" ;;
                "popupGradientOpacity,message") echo "グラデーションの不透明度" ;;
                "popupGradientOpacity,description") echo "グラデーションの不透明度スライダーのラベル" ;;
                "popupEnableWeekends,message") echo "週末に色を付ける" ;;
                "popupEnableWeekends,description") echo "週末の色付けを切り替えるスイッチのラベル" ;;
                "popupThemeSelect,message") echo "テーマ" ;;
                "popupThemeSelect,description") echo "テーマ選択ドロップダウンのラベル" ;;
                "popupThemeSystem,message") echo "システムのデフォルト" ;;
                "popupThemeSystem,description") echo "システムのテーマ設定を使用するオプション" ;;
                "popupThemeLight,message") echo "ライト" ;;
                "popupThemeLight,description") echo "ライトテーマのオプション" ;;
                "popupThemeDark,message") echo "ダーク" ;;
                "popupThemeDark,description") echo "ダークテーマのオプション" ;;
                "popupLightThemeColor,message") echo "週末の色（ライトテーマ）" ;;
                "popupLightThemeColor,description") echo "ライトテーマの週末色選択のラベル" ;;
                "popupDarkThemeColor,message") echo "週末の色（ダークテーマ）" ;;
                "popupDarkThemeColor,description") echo "ダークテーマの週末色選択のラベル" ;;
                "popupColorCustom,message") echo "カスタム..." ;;
                "popupColorCustom,description") echo "カスタム色選択のオプション" ;;
                "popupColorDefaultBlue,message") echo "デフォルトブルー" ;;
                "popupColorDefaultBlue,description") echo "ライトテーマのプリセット色オプション" ;;
                "popupColorLightGray,message") echo "ライトグレー" ;;
                "popupColorLightGray,description") echo "ライトテーマのプリセット色オプション" ;;
                "popupColorWarmBeige,message") echo "ウォームベージュ" ;;
                "popupColorWarmBeige,description") echo "ライトテーマのプリセット色オプション" ;;
                "popupColorSoftPurple,message") echo "ソフトパープル" ;;
                "popupColorSoftPurple,description") echo "ライトテーマのプリセット色オプション" ;;
                "popupColorMintGreen,message") echo "ミントグリーン" ;;
                "popupColorMintGreen,description") echo "ライトテーマのプリセット色オプション" ;;
                "popupColorDefaultDark,message") echo "デフォルトダーク" ;;
                "popupColorDefaultDark,description") echo "ダークテーマのプリセット色オプション" ;;
                "popupColorSoftBlack,message") echo "ソフトブラック" ;;
                "popupColorSoftBlack,description") echo "ダークテーマのプリセット色オプション" ;;
                "popupColorBlueGray,message") echo "ブルーグレー" ;;
                "popupColorBlueGray,description") echo "ダークテーマのプリセット色オプション" ;;
                "popupColorNavyDark,message") echo "ネイビーダーク" ;;
                "popupColorNavyDark,description") echo "ダークテーマのプリセット色オプション" ;;
                "popupColorCharcoal,message") echo "チャコール" ;;
                "popupColorCharcoal,description") echo "ダークテーマのプリセット色オプション" ;;
            esac
            ;;
        "de")
            case "$field,$type" in
                "extensionName,message") echo "Gradient-Zusammenführung für Google Calendar™ Ereignisse" ;;
                "extensionName,description") echo "Name der Erweiterung, die doppelte Kalenderereignisse mit Farbverläufen zusammenführt." ;;
                "extensionDescription,message") echo "Führt doppelte Google Calendar Ereignisse in einem Regenbogen zusammen und färbt die Wochenenden" ;;
                "extensionDescription,description") echo "Beschreibung der Hauptfunktionalität der Erweiterung." ;;
                "popupEnableExtension,message") echo "Erweiterung Aktivieren" ;;
                "popupEnableExtension,description") echo "Beschriftung für den Ein/Aus-Schalter der Erweiterung" ;;
                "popupGradientOpacity,message") echo "Gradient-Deckkraft" ;;
                "popupGradientOpacity,description") echo "Beschriftung für den Gradient-Deckkraft-Regler" ;;
                "popupEnableWeekends,message") echo "Wochenenden Einfärben" ;;
                "popupEnableWeekends,description") echo "Beschriftung für den Schalter zum Einfärben der Wochenenden" ;;
                "popupThemeSelect,message") echo "Design" ;;
                "popupThemeSelect,description") echo "Beschriftung für die Design-Auswahl" ;;
                "popupThemeSystem,message") echo "Systemstandard" ;;
                "popupThemeSystem,description") echo "Option zur Verwendung der System-Design-Einstellungen" ;;
                "popupThemeLight,message") echo "Hell" ;;
                "popupThemeLight,description") echo "Option für helles Design" ;;
                "popupThemeDark,message") echo "Dunkel" ;;
                "popupThemeDark,description") echo "Option für dunkles Design" ;;
                "popupLightThemeColor,message") echo "Wochenendfarbe (Helles Design)" ;;
                "popupLightThemeColor,description") echo "Beschriftung für die Wochenendfarbenauswahl im hellen Design" ;;
                "popupDarkThemeColor,message") echo "Wochenendfarbe (Dunkles Design)" ;;
                "popupDarkThemeColor,description") echo "Beschriftung für die Wochenendfarbenauswahl im dunklen Design" ;;
                "popupColorCustom,message") echo "Benutzerdefiniert..." ;;
                "popupColorCustom,description") echo "Option für benutzerdefinierte Farbauswahl" ;;
                "popupColorDefaultBlue,message") echo "Standard Blau" ;;
                "popupColorDefaultBlue,description") echo "Voreingestellte Farboption für helles Design" ;;
                "popupColorLightGray,message") echo "Hellgrau" ;;
                "popupColorLightGray,description") echo "Voreingestellte Farboption für helles Design" ;;
                "popupColorWarmBeige,message") echo "Warmes Beige" ;;
                "popupColorWarmBeige,description") echo "Voreingestellte Farboption für helles Design" ;;
                "popupColorSoftPurple,message") echo "Sanftes Violett" ;;
                "popupColorSoftPurple,description") echo "Voreingestellte Farboption für helles Design" ;;
                "popupColorMintGreen,message") echo "Mintgrün" ;;
                "popupColorMintGreen,description") echo "Voreingestellte Farboption für helles Design" ;;
                "popupColorDefaultDark,message") echo "Standard Dunkel" ;;
                "popupColorDefaultDark,description") echo "Voreingestellte Farboption für dunkles Design" ;;
                "popupColorSoftBlack,message") echo "Sanftes Schwarz" ;;
                "popupColorSoftBlack,description") echo "Voreingestellte Farboption für dunkles Design" ;;
                "popupColorBlueGray,message") echo "Blaugrau" ;;
                "popupColorBlueGray,description") echo "Voreingestellte Farboption für dunkles Design" ;;
                "popupColorNavyDark,message") echo "Marineblau Dunkel" ;;
                "popupColorNavyDark,description") echo "Voreingestellte Farboption für dunkles Design" ;;
                "popupColorCharcoal,message") echo "Anthrazit" ;;
                "popupColorCharcoal,description") echo "Voreingestellte Farboption für dunkles Design" ;;
            esac
            ;;
        "fr")
            case "$field,$type" in
                "extensionName,message") echo "Fusion en dégradé pour événements Google Calendar™" ;;
                "extensionName,description") echo "Nom de l'extension qui fusionne les événements en double du calendrier avec des dégradés." ;;
                "extensionDescription,message") echo "Fusionne les événements Google Calendar en double dans un arc-en-ciel et colore les week-ends" ;;
                "extensionDescription,description") echo "Description expliquant la fonctionnalité principale de l'extension." ;;
                "popupEnableExtension,message") echo "Activer l'Extension" ;;
                "popupEnableExtension,description") echo "Étiquette pour l'interrupteur d'activation/désactivation de l'extension" ;;
                "popupGradientOpacity,message") echo "Opacité du Dégradé" ;;
                "popupGradientOpacity,description") echo "Étiquette pour le curseur d'opacité du dégradé" ;;
                "popupEnableWeekends,message") echo "Colorer les Week-ends" ;;
                "popupEnableWeekends,description") echo "Étiquette pour l'interrupteur de coloration des week-ends" ;;
                "popupThemeSelect,message") echo "Thème" ;;
                "popupThemeSelect,description") echo "Étiquette pour la sélection du thème" ;;
                "popupThemeSystem,message") echo "Système par défaut" ;;
                "popupThemeSystem,description") echo "Option pour utiliser les paramètres du thème système" ;;
                "popupThemeLight,message") echo "Clair" ;;
                "popupThemeLight,description") echo "Option pour le thème clair" ;;
                "popupThemeDark,message") echo "Sombre" ;;
                "popupThemeDark,description") echo "Option pour le thème sombre" ;;
                "popupLightThemeColor,message") echo "Couleur week-end (Thème clair)" ;;
                "popupLightThemeColor,description") echo "Étiquette pour la sélection de couleur week-end en thème clair" ;;
                "popupDarkThemeColor,message") echo "Couleur week-end (Thème sombre)" ;;
                "popupDarkThemeColor,description") echo "Étiquette pour la sélection de couleur week-end en thème sombre" ;;
                "popupColorCustom,message") echo "Personnalisé..." ;;
                "popupColorCustom,description") echo "Option pour la sélection de couleur personnalisée" ;;
                "popupColorDefaultBlue,message") echo "Bleu par défaut" ;;
                "popupColorDefaultBlue,description") echo "Option de couleur prédéfinie pour le thème clair" ;;
                "popupColorLightGray,message") echo "Gris clair" ;;
                "popupColorLightGray,description") echo "Option de couleur prédéfinie pour le thème clair" ;;
                "popupColorWarmBeige,message") echo "Beige chaud" ;;
                "popupColorWarmBeige,description") echo "Option de couleur prédéfinie pour le thème clair" ;;
                "popupColorSoftPurple,message") echo "Violet doux" ;;
                "popupColorSoftPurple,description") echo "Option de couleur prédéfinie pour le thème clair" ;;
                "popupColorMintGreen,message") echo "Vert menthe" ;;
                "popupColorMintGreen,description") echo "Option de couleur prédéfinie pour le thème clair" ;;
                "popupColorDefaultDark,message") echo "Sombre par défaut" ;;
                "popupColorDefaultDark,description") echo "Option de couleur prédéfinie pour le thème sombre" ;;
                "popupColorSoftBlack,message") echo "Noir doux" ;;
                "popupColorSoftBlack,description") echo "Option de couleur prédéfinie pour le thème sombre" ;;
                "popupColorBlueGray,message") echo "Gris bleuté" ;;
                "popupColorBlueGray,description") echo "Option de couleur prédéfinie pour le thème sombre" ;;
                "popupColorNavyDark,message") echo "Bleu marine foncé" ;;
                "popupColorNavyDark,description") echo "Option de couleur prédéfinie pour le thème sombre" ;;
                "popupColorCharcoal,message") echo "Charbon" ;;
                "popupColorCharcoal,description") echo "Option de couleur prédéfinie pour le thème sombre" ;;
            esac
            ;;
        "it")
            case "$field,$type" in
                "extensionName,message") echo "Fusione Gradiente per Eventi di Google Calendar™" ;;
                "extensionName,description") echo "Nome dell'estensione che unisce eventi duplicati del calendario con gradienti." ;;
                "extensionDescription,message") echo "Unisce eventi duplicati di Google Calendar in un arcobaleno e colora i fine settimana" ;;
                "extensionDescription,description") echo "Descrizione che spiega la funzionalità principale dell'estensione." ;;
                "popupEnableExtension,message") echo "Attiva Estensione" ;;
                "popupEnableExtension,description") echo "Etichetta per l'interruttore di attivazione/disattivazione dell'estensione" ;;
                "popupGradientOpacity,message") echo "Opacità del Gradiente" ;;
                "popupGradientOpacity,description") echo "Etichetta per il cursore dell'opacità del gradiente" ;;
                "popupEnableWeekends,message") echo "Colora Fine Settimana" ;;
                "popupEnableWeekends,description") echo "Etichetta per l'interruttore di colorazione dei fine settimana" ;;
                "popupThemeSelect,message") echo "Tema" ;;
                "popupThemeSelect,description") echo "Etichetta per la selezione del tema" ;;
                "popupThemeSystem,message") echo "Predefinito di Sistema" ;;
                "popupThemeSystem,description") echo "Opzione per utilizzare le impostazioni del tema di sistema" ;;
                "popupThemeLight,message") echo "Chiaro" ;;
                "popupThemeLight,description") echo "Opzione per il tema chiaro" ;;
                "popupThemeDark,message") echo "Scuro" ;;
                "popupThemeDark,description") echo "Opzione per il tema scuro" ;;
                "popupLightThemeColor,message") echo "Colore Weekendu (Tema Chiaro)" ;;
                "popupLightThemeColor,description") echo "Etichetta per la selezione del colore weekend nel tema chiaro" ;;
                "popupDarkThemeColor,message") echo "Colore Weekendu (Tema Scuro)" ;;
                "popupDarkThemeColor,description") echo "Etichetta per la selezione del colore weekend nel tema scuro" ;;
                "popupColorCustom,message") echo "Personalizzato..." ;;
                "popupColorCustom,description") echo "Opzione per la selezione del colore personalizzato" ;;
                "popupColorDefaultBlue,message") echo "Blu Predefinito" ;;
                "popupColorDefaultBlue,description") echo "Opzione colore predefinito per il tema chiaro" ;;
                "popupColorLightGray,message") echo "Grigio Chiaro" ;;
                "popupColorLightGray,description") echo "Opzione colore predefinito per il tema chiaro" ;;
                "popupColorWarmBeige,message") echo "Beige Caldo" ;;
                "popupColorWarmBeige,description") echo "Opzione colore predefinito per il tema chiaro" ;;
                "popupColorSoftPurple,message") echo "Viola Tenue" ;;
                "popupColorSoftPurple,description") echo "Opzione colore predefinito per il tema chiaro" ;;
                "popupColorMintGreen,message") echo "Verde Menta" ;;
                "popupColorMintGreen,description") echo "Opzione colore predefinito per il tema chiaro" ;;
                "popupColorDefaultDark,message") echo "Scuro Predefinito" ;;
                "popupColorDefaultDark,description") echo "Opzione colore predefinito per il tema scuro" ;;
                "popupColorSoftBlack,message") echo "Nero Tenue" ;;
                "popupColorSoftBlack,description") echo "Opzione colore predefinito per il tema scuro" ;;
                "popupColorBlueGray,message") echo "Grigio Blu" ;;
                "popupColorBlueGray,description") echo "Opzione colore predefinito per il tema scuro" ;;
                "popupColorNavyDark,message") echo "Blu Navy Scuro" ;;
                "popupColorNavyDark,description") echo "Opzione colore predefinito per il tema scuro" ;;
                "popupColorCharcoal,message") echo "Antracite" ;;
                "popupColorCharcoal,description") echo "Opzione colore predefinito per il tema scuro" ;;
            esac
            ;;
        "ko")
            case "$field,$type" in
                "extensionName,message") echo "Google Calendar™ 이벤트 그라데이션 병합" ;;
                "extensionName,description") echo "그라데이션으로 중복 캘린더 이벤트를 병합하는 확장 프로그램의 이름입니다." ;;
                "extensionDescription,message") echo "중복된 Google Calendar 이벤트를 무지개색으로 병합하고 주말에 색상을 입힙니다" ;;
                "extensionDescription,description") echo "확장 프로그램의 주요 기능을 설명하는 설명입니다." ;;
                "popupEnableExtension,message") echo "확장 프로그램 활성화" ;;
                "popupEnableExtension,description") echo "확장 프로그램 활성화/비활성화 토글 스위치의 레이블" ;;
                "popupGradientOpacity,message") echo "그라데이션 불투명도" ;;
                "popupGradientOpacity,description") echo "그라데이션 불투명도 슬라이더의 레이블" ;;
                "popupEnableWeekends,message") echo "주말 색상 적용" ;;
                "popupEnableWeekends,description") echo "주말 색상 적용 토글 스위치의 레이블" ;;
                "popupThemeSelect,message") echo "테마" ;;
                "popupThemeSelect,description") echo "테마 선택 드롭다운의 레이블" ;;
                "popupThemeSystem,message") echo "시스템 기본값" ;;
                "popupThemeSystem,description") echo "시스템 테마 설정을 사용하는 옵션" ;;
                "popupThemeLight,message") echo "라이트" ;;
                "popupThemeLight,description") echo "라이트 테마 옵션" ;;
                "popupThemeDark,message") echo "다크" ;;
                "popupThemeDark,description") echo "다크 테마 옵션" ;;
                "popupLightThemeColor,message") echo "주말 색상 (라이트 테마)" ;;
                "popupLightThemeColor,description") echo "라이트 테마의 주말 색상 선택 레이블" ;;
                "popupDarkThemeColor,message") echo "주말 색상 (다크 테마)" ;;
                "popupDarkThemeColor,description") echo "다크 테마의 주말 색상 선택 레이블" ;;
                "popupColorCustom,message") echo "사용자 지정..." ;;
                "popupColorCustom,description") echo "사용자 지정 색상 선택 옵션" ;;
                "popupColorDefaultBlue,message") echo "기본 파란색" ;;
                "popupColorDefaultBlue,description") echo "라이트 테마의 프리셋 색상 옵션" ;;
                "popupColorLightGray,message") echo "밝은 회색" ;;
                "popupColorLightGray,description") echo "라이트 테마의 프리셋 색상 옵션" ;;
                "popupColorWarmBeige,message") echo "따뜻한 베이지" ;;
                "popupColorWarmBeige,description") echo "라이트 테마의 프리셋 색상 옵션" ;;
                "popupColorSoftPurple,message") echo "부드러운 보라색" ;;
                "popupColorSoftPurple,description") echo "라이트 테마의 프리셋 색상 옵션" ;;
                "popupColorMintGreen,message") echo "민트 그린" ;;
                "popupColorMintGreen,description") echo "라이트 테마의 프리셋 색상 옵션" ;;
                "popupColorDefaultDark,message") echo "기본 다크" ;;
                "popupColorDefaultDark,description") echo "다크 테마의 프리셋 색상 옵션" ;;
                "popupColorSoftBlack,message") echo "부드러운 검정" ;;
                "popupColorSoftBlack,description") echo "다크 테마의 프리셋 색상 옵션" ;;
                "popupColorBlueGray,message") echo "블루 그레이" ;;
                "popupColorBlueGray,description") echo "다크 테마의 프리셋 색상 옵션" ;;
                "popupColorNavyDark,message") echo "네이비 다크" ;;
                "popupColorNavyDark,description") echo "다크 테마의 프리셋 색상 옵션" ;;
                "popupColorCharcoal,message") echo "차콜" ;;
                "popupColorCharcoal,description") echo "다크 테마의 프리셋 색상 옵션" ;;
            esac
            ;;
        "nl")
            case "$field,$type" in
                "extensionName,message") echo "Gradiënt Samenvoegen voor Google Calendar™ Gebeurtenissen" ;;
                "extensionName,description") echo "Naam van de extensie die dubbele agenda-gebeurtenissen samenvoegt met gradiënten." ;;
                "extensionDescription,message") echo "Voegt dubbele Google Calendar gebeurtenissen samen in een regenboog en kleurt de weekenden" ;;
                "extensionDescription,description") echo "Beschrijving die de hoofdfunctionaliteit van de extensie uitlegt." ;;
                "popupEnableExtension,message") echo "Extensie Inschakelen" ;;
                "popupEnableExtension,description") echo "Label voor de extensie aan/uit-schakelaar" ;;
                "popupGradientOpacity,message") echo "Gradiënt Transparantie" ;;
                "popupGradientOpacity,description") echo "Label voor de gradiënt transparantie schuifregelaar" ;;
                "popupEnableWeekends,message") echo "Weekenden Kleuren" ;;
                "popupEnableWeekends,description") echo "Label voor de weekenden kleuring schakelaar" ;;
                "popupThemeSelect,message") echo "Thema" ;;
                "popupThemeSelect,description") echo "Label voor de themaselectie" ;;
                "popupThemeSystem,message") echo "Systeemstandaard" ;;
                "popupThemeSystem,description") echo "Optie om systeemthema-instellingen te gebruiken" ;;
                "popupThemeLight,message") echo "Licht" ;;
                "popupThemeLight,description") echo "Optie voor licht thema" ;;
                "popupThemeDark,message") echo "Donker" ;;
                "popupThemeDark,description") echo "Optie voor donker thema" ;;
                "popupLightThemeColor,message") echo "Weekendkleur (Licht Thema)" ;;
                "popupLightThemeColor,description") echo "Label voor weekendkleur selectie in licht thema" ;;
                "popupDarkThemeColor,message") echo "Weekendkleur (Donker Thema)" ;;
                "popupDarkThemeColor,description") echo "Label voor weekendkleur selectie in donker thema" ;;
                "popupColorCustom,message") echo "Aangepast..." ;;
                "popupColorCustom,description") echo "Optie voor aangepaste kleurselectie" ;;
                "popupColorDefaultBlue,message") echo "Standaard Blauw" ;;
                "popupColorDefaultBlue,description") echo "Vooraf ingestelde kleuroptie voor licht thema" ;;
                "popupColorLightGray,message") echo "Lichtgrijs" ;;
                "popupColorLightGray,description") echo "Vooraf ingestelde kleuroptie voor licht thema" ;;
                "popupColorWarmBeige,message") echo "Warm Beige" ;;
                "popupColorWarmBeige,description") echo "Vooraf ingestelde kleuroptie voor licht thema" ;;
                "popupColorSoftPurple,message") echo "Zacht Paars" ;;
                "popupColorSoftPurple,description") echo "Vooraf ingestelde kleuroptie voor licht thema" ;;
                "popupColorMintGreen,message") echo "Mintgroen" ;;
                "popupColorMintGreen,description") echo "Vooraf ingestelde kleuroptie voor licht thema" ;;
                "popupColorDefaultDark,message") echo "Standaard Donker" ;;
                "popupColorDefaultDark,description") echo "Vooraf ingestelde kleuroptie voor donker thema" ;;
                "popupColorSoftBlack,message") echo "Zacht Zwart" ;;
                "popupColorSoftBlack,description") echo "Vooraf ingestelde kleuroptie voor donker thema" ;;
                "popupColorBlueGray,message") echo "Blauwgrijs" ;;
                "popupColorBlueGray,description") echo "Vooraf ingestelde kleuroptie voor donker thema" ;;
                "popupColorNavyDark,message") echo "Marine Donker" ;;
                "popupColorNavyDark,description") echo "Vooraf ingestelde kleuroptie voor donker thema" ;;
                "popupColorCharcoal,message") echo "Houtskool" ;;
                "popupColorCharcoal,description") echo "Vooraf ingestelde kleuroptie voor donker thema" ;;
            esac
            ;;
        "pl")
            case "$field,$type" in
                "extensionName,message") echo "Gradientowe Łączenie Wydarzeń Google Calendar™" ;;
                "extensionName,description") echo "Nazwa rozszerzenia łączącego zduplikowane wydarzenia kalendarza z gradientami." ;;
                "extensionDescription,message") echo "Łączy zduplikowane wydarzenia Google Calendar w tęczę i koloruje weekendy" ;;
                "extensionDescription,description") echo "Opis wyjaśniający główną funkcjonalność rozszerzenia." ;;
                "popupEnableExtension,message") echo "Włącz Rozszerzenie" ;;
                "popupEnableExtension,description") echo "Etykieta dla przełącznika włączania/wyłączania rozszerzenia" ;;
                "popupGradientOpacity,message") echo "Przezroczystość Gradientu" ;;
                "popupGradientOpacity,description") echo "Etykieta dla suwaka przezroczystości gradientu" ;;
                "popupEnableWeekends,message") echo "Koloruj Weekendy" ;;
                "popupEnableWeekends,description") echo "Etykieta dla przełącznika kolorowania weekendów" ;;
                "popupThemeSelect,message") echo "Motyw" ;;
                "popupThemeSelect,description") echo "Etykieta dla wyboru motywu" ;;
                "popupThemeSystem,message") echo "Domyślny Systemowy" ;;
                "popupThemeSystem,description") echo "Opcja użycia ustawień motywu systemowego" ;;
                "popupThemeLight,message") echo "Jasny" ;;
                "popupThemeLight,description") echo "Opcja dla jasnego motywu" ;;
                "popupThemeDark,message") echo "Ciemny" ;;
                "popupThemeDark,description") echo "Opcja dla ciemnego motywu" ;;
                "popupLightThemeColor,message") echo "Kolor Weekendu (Jasny Motyw)" ;;
                "popupLightThemeColor,description") echo "Etykieta dla wyboru koloru weekendu w jasnym motywie" ;;
                "popupDarkThemeColor,message") echo "Kolor Weekendu (Ciemny Motyw)" ;;
                "popupDarkThemeColor,description") echo "Etykieta dla wyboru koloru weekendu w ciemnym motywie" ;;
                "popupColorCustom,message") echo "Własny..." ;;
                "popupColorCustom,description") echo "Opcja dla własnego wyboru koloru" ;;
                "popupColorDefaultBlue,message") echo "Domyślny Niebieski" ;;
                "popupColorDefaultBlue,description") echo "Predefiniowana opcja koloru dla jasnego motywu" ;;
                "popupColorLightGray,message") echo "Jasnoszary" ;;
                "popupColorLightGray,description") echo "Predefiniowana opcja koloru dla jasnego motywu" ;;
                "popupColorWarmBeige,message") echo "Ciepły Beżowy" ;;
                "popupColorWarmBeige,description") echo "Predefiniowana opcja koloru dla jasnego motywu" ;;
                "popupColorSoftPurple,message") echo "Delikatny Fiolet" ;;
                "popupColorSoftPurple,description") echo "Predefiniowana opcja koloru dla jasnego motywu" ;;
                "popupColorMintGreen,message") echo "Miętowy Zielony" ;;
                "popupColorMintGreen,description") echo "Predefiniowana opcja koloru dla jasnego motywu" ;;
                "popupColorDefaultDark,message") echo "Domyślny Ciemny" ;;
                "popupColorDefaultDark,description") echo "Predefiniowana opcja koloru dla ciemnego motywu" ;;
                "popupColorSoftBlack,message") echo "Delikatna Czerń" ;;
                "popupColorSoftBlack,description") echo "Predefiniowana opcja koloru dla ciemnego motywu" ;;
                "popupColorBlueGray,message") echo "Niebieskoszary" ;;
                "popupColorBlueGray,description") echo "Predefiniowana opcja koloru dla ciemnego motywu" ;;
                "popupColorNavyDark,message") echo "Ciemny Granatowy" ;;
                "popupColorNavyDark,description") echo "Predefiniowana opcja koloru dla ciemnego motywu" ;;
                "popupColorCharcoal,message") echo "Węglowy" ;;
                "popupColorCharcoal,description") echo "Predefiniowana opcja koloru dla ciemnego motywu" ;;
            esac
            ;;
        "tr")
            case "$field,$type" in
                "extensionName,message") echo "Google Calendar™ Etkinlikleri için Gradyan Birleştirme" ;;
                "extensionName,description") echo "Yinelenen takvim etkinliklerini gradyanlarla birleştiren uzantının adı." ;;
                "extensionDescription,message") echo "Yinelenen Google Calendar etkinliklerini gökkuşağına dönüştürür ve haftasonlarını renklendirir" ;;
                "extensionDescription,description") echo "Uzantının ana işlevini açıklayan açıklama." ;;
                "popupEnableExtension,message") echo "Uzantıyı Etkinleştir" ;;
                "popupEnableExtension,description") echo "Uzantı etkinleştirme/devre dışı bırakma düğmesi için etiket" ;;
                "popupGradientOpacity,message") echo "Gradyan Opaklığı" ;;
                "popupGradientOpacity,description") echo "Gradyan opaklık kaydırıcısı için etiket" ;;
                "popupEnableWeekends,message") echo "Haftasonlarını Renklendir" ;;
                "popupEnableWeekends,description") echo "Haftasonu renklendirme düğmesi için etiket" ;;
                "popupThemeSelect,message") echo "Tema" ;;
                "popupThemeSelect,description") echo "Tema seçimi için etiket" ;;
                "popupThemeSystem,message") echo "Sistem Varsayılanı" ;;
                "popupThemeSystem,description") echo "Sistem tema ayarlarını kullanma seçeneği" ;;
                "popupThemeLight,message") echo "Açık" ;;
                "popupThemeLight,description") echo "Açık tema seçeneği" ;;
                "popupThemeDark,message") echo "Koyu" ;;
                "popupThemeDark,description") echo "Koyu tema seçeneği" ;;
                "popupLightThemeColor,message") echo "Haftasonu Rengi (Açık Tema)" ;;
                "popupLightThemeColor,description") echo "Açık temada haftasonu renk seçimi için etiket" ;;
                "popupDarkThemeColor,message") echo "Haftasonu Rengi (Koyu Tema)" ;;
                "popupDarkThemeColor,description") echo "Koyu temada haftasonu renk seçimi için etiket" ;;
                "popupColorCustom,message") echo "Özel..." ;;
                "popupColorCustom,description") echo "Özel renk seçimi için seçenek" ;;
                "popupColorDefaultBlue,message") echo "Varsayılan Mavi" ;;
                "popupColorDefaultBlue,description") echo "Açık tema için önceden ayarlanmış renk seçeneği" ;;
                "popupColorLightGray,message") echo "Açık Gri" ;;
                "popupColorLightGray,description") echo "Açık tema için önceden ayarlanmış renk seçeneği" ;;
                "popupColorWarmBeige,message") echo "Sıcak Bej" ;;
                "popupColorWarmBeige,description") echo "Açık tema için önceden ayarlanmış renk seçeneği" ;;
                "popupColorSoftPurple,message") echo "Yumuşak Mor" ;;
                "popupColorSoftPurple,description") echo "Açık tema için önceden ayarlanmış renk seçeneği" ;;
                "popupColorMintGreen,message") echo "Nane Yeşili" ;;
                "popupColorMintGreen,description") echo "Açık tema için önceden ayarlanmış renk seçeneği" ;;
                "popupColorDefaultDark,message") echo "Varsayılan Koyu" ;;
                "popupColorDefaultDark,description") echo "Koyu tema için önceden ayarlanmış renk seçeneği" ;;
                "popupColorSoftBlack,message") echo "Yumuşak Siyah" ;;
                "popupColorSoftBlack,description") echo "Koyu tema için önceden ayarlanmış renk seçeneği" ;;
                "popupColorBlueGray,message") echo "Mavi Gri" ;;
                "popupColorBlueGray,description") echo "Koyu tema için önceden ayarlanmış renk seçeneği" ;;
                "popupColorNavyDark,message") echo "Lacivert Koyu" ;;
                "popupColorNavyDark,description") echo "Koyu tema için önceden ayarlanmış renk seçeneği" ;;
                "popupColorCharcoal,message") echo "Kömür" ;;
                "popupColorCharcoal,description") echo "Koyu tema için önceden ayarlanmış renk seçeneği" ;;
            esac
            ;;
        "vi")
            case "$field,$type" in
                "extensionName,message") echo "Kết hợp Gradient cho Sự kiện Google Calendar™" ;;
                "extensionName,description") echo "Tên tiện ích mở rộng kết hợp các sự kiện lịch trùng lặp với gradient." ;;
                "extensionDescription,message") echo "Kết hợp các sự kiện trùng lặp của Google Calendar thành cầu vồng và tô màu các ngày cuối tuần" ;;
                "extensionDescription,description") echo "Mô tả giải thích chức năng chính của tiện ích mở rộng." ;;
                "popupEnableExtension,message") echo "Bật Tiện Ích Mở Rộng" ;;
                "popupEnableExtension,description") echo "Nhãn cho công tắc bật/tắt tiện ích mở rộng" ;;
                "popupGradientOpacity,message") echo "Độ Mờ Gradient" ;;
                "popupGradientOpacity,description") echo "Nhãn cho thanh trượt độ mờ gradient" ;;
                "popupEnableWeekends,message") echo "Tô Màu Cuối Tuần" ;;
                "popupEnableWeekends,description") echo "Nhãn cho công tắc tô màu cuối tuần" ;;
                "popupThemeSelect,message") echo "Giao diện" ;;
                "popupThemeSelect,description") echo "Nhãn cho lựa chọn giao diện" ;;
                "popupThemeSystem,message") echo "Mặc định Hệ thống" ;;
                "popupThemeSystem,description") echo "Tùy chọn sử dụng cài đặt giao diện hệ thống" ;;
                "popupThemeLight,message") echo "Sáng" ;;
                "popupThemeLight,description") echo "Tùy chọn cho giao diện sáng" ;;
                "popupThemeDark,message") echo "Tối" ;;
                "popupThemeDark,description") echo "Tùy chọn cho giao diện tối" ;;
                "popupLightThemeColor,message") echo "Màu Cuối tuần (Giao diện Sáng)" ;;
                "popupLightThemeColor,description") echo "Nhãn cho lựa chọn màu cuối tuần trong giao diện sáng" ;;
                "popupDarkThemeColor,message") echo "Màu Cuối tuần (Giao diện Tối)" ;;
                "popupDarkThemeColor,description") echo "Nhãn cho lựa chọn màu cuối tuần trong giao diện tối" ;;
                "popupColorCustom,message") echo "Tùy chỉnh..." ;;
                "popupColorCustom,description") echo "Tùy chọn cho lựa chọn màu tùy chỉnh" ;;
                "popupColorDefaultBlue,message") echo "Xanh Mặc định" ;;
                "popupColorDefaultBlue,description") echo "Tùy chọn màu cài sẵn cho giao diện sáng" ;;
                "popupColorLightGray,message") echo "Xám Nhạt" ;;
                "popupColorLightGray,description") echo "Tùy chọn màu cài sẵn cho giao diện sáng" ;;
                "popupColorWarmBeige,message") echo "Be Ấm" ;;
                "popupColorWarmBeige,description") echo "Tùy chọn màu cài sẵn cho giao diện sáng" ;;
                "popupColorSoftPurple,message") echo "Tím Nhẹ" ;;
                "popupColorSoftPurple,description") echo "Tùy chọn màu cài sẵn cho giao diện sáng" ;;
                "popupColorMintGreen,message") echo "Xanh Bạc Hà" ;;
                "popupColorMintGreen,description") echo "Tùy chọn màu cài sẵn cho giao diện sáng" ;;
                "popupColorDefaultDark,message") echo "Tối Mặc định" ;;
                "popupColorDefaultDark,description") echo "Tùy chọn màu cài sẵn cho giao diện tối" ;;
                "popupColorSoftBlack,message") echo "Đen Nhẹ" ;;
                "popupColorSoftBlack,description") echo "Tùy chọn màu cài sẵn cho giao diện tối" ;;
                "popupColorBlueGray,message") echo "Xám Xanh" ;;
                "popupColorBlueGray,description") echo "Tùy chọn màu cài sẵn cho giao diện tối" ;;
                "popupColorNavyDark,message") echo "Xanh Than Đậm" ;;
                "popupColorNavyDark,description") echo "Tùy chọn màu cài sẵn cho giao diện tối" ;;
                "popupColorCharcoal,message") echo "Than Chì" ;;
                "popupColorCharcoal,description") echo "Tùy chọn màu cài sẵn cho giao diện tối" ;;
            esac
            ;;
        "th")
            case "$field,$type" in
                "extensionName,message") echo "การผสานแบบไล่ระดับสำหรับกิจกรรม Google Calendar™" ;;
                "extensionName,description") echo "ชื่อส่วนขยายที่ผสานกิจกรรมปฏิทินที่ซ้ำซ้อนด้วยการไล่ระดับ" ;;
                "extensionDescription,message") echo "ผสานกิจกรรม Google Calendar ที่ซ้ำซ้อนให้เป็นสีรุ้งและระบายสีวันสุดสัปดาห์" ;;
                "extensionDescription,description") echo "คำอธิบายที่อธิบายฟังก์ชันหลักของส่วนขยาย" ;;
                "popupEnableExtension,message") echo "เปิดใช้งานส่วนขยาย" ;;
                "popupEnableExtension,description") echo "ป้ายกำกับสำหรับสวิตช์เปิด/ปิดส่วนขยาย" ;;
                "popupGradientOpacity,message") echo "ความทึบของการไล่ระดับ" ;;
                "popupGradientOpacity,description") echo "ป้ายกำกับสำหรับตัวเลื่อนความทึบของการไล่ระดับ" ;;
                "popupEnableWeekends,message") echo "ระบายสีวันสุดสัปดาห์" ;;
                "popupEnableWeekends,description") echo "ป้ายกำกับสำหรับสวิตช์ระบายสีวันสุดสัปดาห์" ;;
                "popupThemeSelect,message") echo "ธีม" ;;
                "popupThemeSelect,description") echo "ป้ายกำกับสำหรับการเลือกธีม" ;;
                "popupThemeSystem,message") echo "ค่าเริ่มต้นของระบบ" ;;
                "popupThemeSystem,description") echo "ตัวเลือกสำหรับใช้การตั้งค่าธีมของระบบ" ;;
                "popupThemeLight,message") echo "สว่าง" ;;
                "popupThemeLight,description") echo "ตัวเลือกสำหรับธีมสว่าง" ;;
                "popupThemeDark,message") echo "มืด" ;;
                "popupThemeDark,description") echo "ตัวเลือกสำหรับธีมมืด" ;;
                "popupLightThemeColor,message") echo "สีวันสุดสัปดาห์ (ธีมสว่าง)" ;;
                "popupLightThemeColor,description") echo "ป้ายกำกับสำหรับการเลือกสีวันสุดสัปดาห์ในธีมสว่าง" ;;
                "popupDarkThemeColor,message") echo "สีวันสุดสัปดาห์ (ธีมมืด)" ;;
                "popupDarkThemeColor,description") echo "ป้ายกำกับสำหรับการเลือกสีวันสุดสัปดาห์ในธีมมืด" ;;
                "popupColorCustom,message") echo "กำหนดเอง..." ;;
                "popupColorCustom,description") echo "ตัวเลือกสำหรับการเลือกสีแบบกำหนดเอง" ;;
                "popupColorDefaultBlue,message") echo "น้ำเงินเริ่มต้น" ;;
                "popupColorDefaultBlue,description") echo "ตัวเลือกสีที่กำหนดไว้ล่วงหน้าสำหรับธีมสว่าง" ;;
                "popupColorLightGray,message") echo "เทาอ่อน" ;;
                "popupColorLightGray,description") echo "ตัวเลือกสีที่กำหนดไว้ล่วงหน้าสำหรับธีมสว่าง" ;;
                "popupColorWarmBeige,message") echo "เบจอุ่น" ;;
                "popupColorWarmBeige,description") echo "ตัวเลือกสีที่กำหนดไว้ล่วงหน้าสำหรับธีมสว่าง" ;;
                "popupColorSoftPurple,message") echo "ม่วงอ่อน" ;;
                "popupColorSoftPurple,description") echo "ตัวเลือกสีที่กำหนดไว้ล่วงหน้าสำหรับธีมสว่าง" ;;
                "popupColorMintGreen,message") echo "เขียวมิ้นท์" ;;
                "popupColorMintGreen,description") echo "ตัวเลือกสีที่กำหนดไว้ล่วงหน้าสำหรับธีมสว่าง" ;;
                "popupColorDefaultDark,message") echo "มืดเริ่มต้น" ;;
                "popupColorDefaultDark,description") echo "ตัวเลือกสีที่กำหนดไว้ล่วงหน้าสำหรับธีมมืด" ;;
                "popupColorSoftBlack,message") echo "ดำอ่อน" ;;
                "popupColorSoftBlack,description") echo "ตัวเลือกสีที่กำหนดไว้ล่วงหน้าสำหรับธีมมืด" ;;
                "popupColorBlueGray,message") echo "เทาน้ำเงิน" ;;
                "popupColorBlueGray,description") echo "ตัวเลือกสีที่กำหนดไว้ล่วงหน้าสำหรับธีมมืด" ;;
                "popupColorNavyDark,message") echo "กรมท่ามืด" ;;
                "popupColorNavyDark,description") echo "ตัวเลือกสีที่กำหนดไว้ล่วงหน้าสำหรับธีมมืด" ;;
                "popupColorCharcoal,message") echo "เทาถ่าน" ;;
                "popupColorCharcoal,description") echo "ตัวเลือกสีที่กำหนดไว้ล่วงหน้าสำหรับธีมมืด" ;;

            esac
            ;;
        "id")
            case "$field,$type" in
                "extensionName,message") echo "Penggabungan Gradien untuk Acara Google Calendar™" ;;
                "extensionName,description") echo "Nama ekstensi yang menggabungkan acara kalender duplikat dengan gradien." ;;
                "extensionDescription,message") echo "Menggabungkan acara Google Calendar yang duplikat menjadi pelangi dan mewarnai akhir pekan" ;;
                "extensionDescription,description") echo "Deskripsi yang menjelaskan fungsi utama ekstensi." ;;
                "popupEnableExtension,message") echo "Aktifkan Ekstensi" ;;
                "popupEnableExtension,description") echo "Label untuk tombol aktif/nonaktif ekstensi" ;;
                "popupGradientOpacity,message") echo "Kegelapan Gradien" ;;
                "popupGradientOpacity,description") echo "Label untuk penggeser kegelapan gradien" ;;
                "popupEnableWeekends,message") echo "Warnai Akhir Pekan" ;;
                "popupEnableWeekends,description") echo "Label untuk tombol pewarnaan akhir pekan" ;;
                "popupThemeSelect,message") echo "Tema" ;;
                "popupThemeSelect,description") echo "Label untuk pemilihan tema" ;;
                "popupThemeSystem,message") echo "Bawaan Sistem" ;;
                "popupThemeSystem,description") echo "Opsi untuk menggunakan pengaturan tema sistem" ;;
                "popupThemeLight,message") echo "Terang" ;;
                "popupThemeLight,description") echo "Opsi untuk tema terang" ;;
                "popupThemeDark,message") echo "Gelap" ;;
                "popupThemeDark,description") echo "Opsi untuk tema gelap" ;;
                "popupLightThemeColor,message") echo "Warna Akhir Pekan (Tema Terang)" ;;
                "popupLightThemeColor,description") echo "Label untuk pemilihan warna akhir pekan dalam tema terang" ;;
                "popupDarkThemeColor,message") echo "Warna Akhir Pekan (Tema Gelap)" ;;
                "popupDarkThemeColor,description") echo "Label untuk pemilihan warna akhir pekan dalam tema gelap" ;;
                "popupColorCustom,message") echo "Kustom..." ;;
                "popupColorCustom,description") echo "Opsi untuk pemilihan warna kustom" ;;
                "popupColorDefaultBlue,message") echo "Biru Bawaan" ;;
                "popupColorDefaultBlue,description") echo "Opsi warna preset untuk tema terang" ;;
                "popupColorLightGray,message") echo "Abu-abu Terang" ;;
                "popupColorLightGray,description") echo "Opsi warna preset untuk tema terang" ;;
                "popupColorWarmBeige,message") echo "Beige Hangat" ;;
                "popupColorWarmBeige,description") echo "Opsi warna preset untuk tema terang" ;;
                "popupColorSoftPurple,message") echo "Ungu Lembut" ;;
                "popupColorSoftPurple,description") echo "Opsi warna preset untuk tema terang" ;;
                "popupColorMintGreen,message") echo "Hijau Mint" ;;
                "popupColorMintGreen,description") echo "Opsi warna preset untuk tema terang" ;;
                "popupColorDefaultDark,message") echo "Gelap Bawaan" ;;
                "popupColorDefaultDark,description") echo "Opsi warna preset untuk tema gelap" ;;
                "popupColorSoftBlack,message") echo "Hitam Lembut" ;;
                "popupColorSoftBlack,description") echo "Opsi warna preset untuk tema gelap" ;;
                "popupColorBlueGray,message") echo "Abu-abu Biru" ;;
                "popupColorBlueGray,description") echo "Opsi warna preset untuk tema gelap" ;;
                "popupColorNavyDark,message") echo "Biru Navy Gelap" ;;
                "popupColorNavyDark,description") echo "Opsi warna preset untuk tema gelap" ;;
                "popupColorCharcoal,message") echo "Arang" ;;
                "popupColorCharcoal,description") echo "Opsi warna preset untuk tema gelap" ;;

            esac
            ;;
        "uk")
            case "$field,$type" in
                "extensionName,message") echo "Градієнтне об'єднання подій Google Calendar™" ;;
                "extensionName,description") echo "Назва розширення, що об'єднує повторювані події календаря з градієнтами." ;;
                "extensionDescription,message") echo "Об'єднує повторювані події Google Calendar у веселку та розфарбовує вихідні" ;;
                "extensionDescription,description") echo "Опис, що пояснює основну функціональність розширення." ;;
                "popupEnableExtension,message") echo "Увімкнути Розширення" ;;
                "popupEnableExtension,description") echo "Мітка для перемикача увімкнення/вимкнення розширення" ;;
                "popupGradientOpacity,message") echo "Непрозорість Градієнта" ;;
                "popupGradientOpacity,description") echo "Мітка для повзунка непрозорості градієнта" ;;
                "popupEnableWeekends,message") echo "Розфарбовувати Вихідні" ;;
                "popupEnableWeekends,description") echo "Мітка для перемикача розфарбовування вихідних" ;;
                "popupThemeSelect,message") echo "Тема" ;;
                "popupThemeSelect,description") echo "Мітка для вибору теми" ;;
                "popupThemeSystem,message") echo "Системна за замовчуванням" ;;
                "popupThemeSystem,description") echo "Опція використання системних налаштувань теми" ;;
                "popupThemeLight,message") echo "Світла" ;;
                "popupThemeLight,description") echo "Опція для світлої теми" ;;
                "popupThemeDark,message") echo "Темна" ;;
                "popupThemeDark,description") echo "Опція для темної теми" ;;
                "popupLightThemeColor,message") echo "Колір вихідних (Світла тема)" ;;
                "popupLightThemeColor,description") echo "Мітка для вибору кольору вихідних у світлій темі" ;;
                "popupDarkThemeColor,message") echo "Колір вихідних (Темна тема)" ;;
                "popupDarkThemeColor,description") echo "Мітка для вибору кольору вихідних у темній темі" ;;
                "popupColorCustom,message") echo "Власний..." ;;
                "popupColorCustom,description") echo "Опція для вибору власного кольору" ;;
                "popupColorDefaultBlue,message") echo "Синій за замовчуванням" ;;
                "popupColorDefaultBlue,description") echo "Попередньо встановлений варіант кольору для світлої теми" ;;
                "popupColorLightGray,message") echo "Світло-сірий" ;;
                "popupColorLightGray,description") echo "Попередньо встановлений варіант кольору для світлої теми" ;;
                "popupColorWarmBeige,message") echo "Теплий бежевий" ;;
                "popupColorWarmBeige,description") echo "Попередньо встановлений варіант кольору для світлої теми" ;;
                "popupColorSoftPurple,message") echo "М'який фіолетовий" ;;
                "popupColorSoftPurple,description") echo "Попередньо встановлений варіант кольору для світлої теми" ;;
                "popupColorMintGreen,message") echo "М'ятно-зелений" ;;
                "popupColorMintGreen,description") echo "Попередньо встановлений варіант кольору для світлої теми" ;;
                "popupColorDefaultDark,message") echo "Темний за замовчуванням" ;;
                "popupColorDefaultDark,description") echo "Попередньо встановлений варіант кольору для темної теми" ;;
                "popupColorSoftBlack,message") echo "М'який чорний" ;;
                "popupColorSoftBlack,description") echo "Попередньо встановлений варіант кольору для темної теми" ;;
                "popupColorBlueGray,message") echo "Синьо-сірий" ;;
                "popupColorBlueGray,description") echo "Попередньо встановлений варіант кольору для темної теми" ;;
                "popupColorNavyDark,message") echo "Темно-синій" ;;
                "popupColorNavyDark,description") echo "Попередньо встановлений варіант кольору для темної теми" ;;
                "popupColorCharcoal,message") echo "Вугільний" ;;
                "popupColorCharcoal,description") echo "Попередньо встановлений варіант кольору для темної теми" ;;

            esac
            ;;
        "ro")
            case "$field,$type" in
                "extensionName,message") echo "Fuziune Gradientă pentru Evenimente Google Calendar™" ;;
                "extensionName,description") echo "Numele extensiei care combină evenimente duplicate din calendar cu gradiente." ;;
                "extensionDescription,message") echo "Combină evenimentele duplicate din Google Calendar într-un curcubeu și colorează weekendurile" ;;
                "extensionDescription,description") echo "Descriere care explică funcționalitatea principală a extensiei." ;;
                "popupEnableExtension,message") echo "Activare Extensie" ;;
                "popupEnableExtension,description") echo "Etichetă pentru comutatorul de activare/dezactivare a extensiei" ;;
                "popupGradientOpacity,message") echo "Opacitate Gradient" ;;
                "popupGradientOpacity,description") echo "Etichetă pentru glisorul de opacitate al gradientului" ;;
                "popupEnableWeekends,message") echo "Colorează Weekendurile" ;;
                "popupEnableWeekends,description") echo "Etichetă pentru comutatorul de colorare a weekendurilor" ;;
                "popupThemeSelect,message") echo "Temă" ;;
                "popupThemeSelect,description") echo "Etichetă pentru selectarea temei" ;;
                "popupThemeSystem,message") echo "Implicit Sistem" ;;
                "popupThemeSystem,description") echo "Opțiune pentru utilizarea setărilor temei sistemului" ;;
                "popupThemeLight,message") echo "Luminos" ;;
                "popupThemeLight,description") echo "Opțiune pentru tema luminoasă" ;;
                "popupThemeDark,message") echo "Întunecat" ;;
                "popupThemeDark,description") echo "Opțiune pentru tema întunecată" ;;
                "popupLightThemeColor,message") echo "Culoare Weekend (Temă Luminoasă)" ;;
                "popupLightThemeColor,description") echo "Etichetă pentru selectarea culorii de weekend în tema luminoasă" ;;
                "popupDarkThemeColor,message") echo "Culoare Weekend (Temă Întunecată)" ;;
                "popupDarkThemeColor,description") echo "Etichetă pentru selectarea culorii de weekend în tema întunecată" ;;
                "popupColorCustom,message") echo "Personalizat..." ;;
                "popupColorCustom,description") echo "Opțiune pentru selectarea culorii personalizate" ;;
                "popupColorDefaultBlue,message") echo "Albastru Implicit" ;;
                "popupColorDefaultBlue,description") echo "Opțiune de culoare presetată pentru tema luminoasă" ;;
                "popupColorLightGray,message") echo "Gri Deschis" ;;
                "popupColorLightGray,description") echo "Opțiune de culoare presetată pentru tema luminoasă" ;;
                "popupColorWarmBeige,message") echo "Bej Cald" ;;
                "popupColorWarmBeige,description") echo "Opțiune de culoare presetată pentru tema luminoasă" ;;
                "popupColorSoftPurple,message") echo "Violet Delicat" ;;
                "popupColorSoftPurple,description") echo "Opțiune de culoare presetată pentru tema luminoasă" ;;
                "popupColorMintGreen,message") echo "Verde Mentă" ;;
                "popupColorMintGreen,description") echo "Opțiune de culoare presetată pentru tema luminoasă" ;;
                "popupColorDefaultDark,message") echo "Întunecat Implicit" ;;
                "popupColorDefaultDark,description") echo "Opțiune de culoare presetată pentru tema întunecată" ;;
                "popupColorSoftBlack,message") echo "Negru Delicat" ;;
                "popupColorSoftBlack,description") echo "Opțiune de culoare presetată pentru tema întunecată" ;;
                "popupColorBlueGray,message") echo "Gri-Albăstrui" ;;
                "popupColorBlueGray,description") echo "Opțiune de culoare presetată pentru tema întunecată" ;;
                "popupColorNavyDark,message") echo "Bleumarin Închis" ;;
                "popupColorNavyDark,description") echo "Opțiune de culoare presetată pentru tema întunecată" ;;
                "popupColorCharcoal,message") echo "Cărbune" ;;
                "popupColorCharcoal,description") echo "Opțiune de culoare presetată pentru tema întunecată" ;;
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