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