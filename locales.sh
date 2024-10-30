#!/bin/bash

mkdir -p _locales

create_locale() {
    local lang=$1
    local name=$2
    local desc=$3
    local name_desc=$4
    local desc_desc=$5
    local enable=$6
    local enable_desc=$7
    local opacity=$8
    local opacity_desc=$9
    
    mkdir -p "_locales/$lang"
    
    cat > "_locales/$lang/messages.json" << EOF
{
  "extensionName": {
    "message": "$name",
    "description": "$name_desc"
  },
  "extensionDescription": {
    "message": "$desc",
    "description": "$desc_desc"
  },
  "popupEnableExtension": {
    "message": "$enable",
    "description": "$enable_desc"
  },
  "popupGradientOpacity": {
    "message": "$opacity",
    "description": "$opacity_desc"
  }
}
EOF

    echo "Created localization for $lang"
}

# English (en)
create_locale "en" \
    "Gradient Merge for Google Calendar™ Events" \
    "Merges duplicate Google Calendar events into one rainbow and colors the weekends." \
    "Name of the extension that merges duplicate calendar events with gradients." \
    "Description explaining the extension's main functionality." \
    "Enable Extension" \
    "Label for the extension enable/disable toggle switch" \
    "Gradient Opacity" \
    "Label for the gradient opacity slider"

# Spanish (es)
create_locale "es" \
    "Fusión Degradada para Eventos de Google Calendar™" \
    "Combina eventos duplicados de Google Calendar en un arcoíris y colorea los fines de semana" \
    "Nombre de la extensión que fusiona eventos duplicados del calendario con degradados." \
    "Descripción que explica la funcionalidad principal de la extensión." \
    "Activar Extensión" \
    "Etiqueta para el interruptor de activar/desactivar la extensión" \
    "Opacidad del Degradado" \
    "Etiqueta para el control deslizante de opacidad del degradado"

# Chinese (zh)
create_locale "zh-CN" \
    "Google Calendar™ 事件渐变合并" \
    "将重复的 Google Calendar 事件合并为彩虹效果并为周末着色" \
    "合并具有渐变效果的重复日历事件的扩展名称。" \
    "解释扩展主要功能的描述。" \
    "启用扩展" \
    "扩展启用/禁用开关的标签" \
    "渐变不透明度" \
    "渐变不透明度滑块的标签"

# Hindi (hi)
create_locale "hi-IN" \
    "Google Calendar™ इवेंट्स के लिए ग्रेडिएंट मर्ज" \
    "डुप्लिकेट Google Calendar इवेंट्स को एक इंद्रधनुष में मिलाता है और सप्ताहांत को रंगता है" \
    "ग्रेडिएंट के साथ डुप्लिकेट कैलेंडर इवेंट्स को मर्ज करने वाले एक्सटेंशन का नाम।" \
    "एक्सटेंशन की मुख्य कार्यक्षमता की व्याख्या करने वाला विवरण।" \
    "एक्सटेंशन सक्षम करें" \
    "एक्सटेंशन सक्षम/अक्षम टॉगल स्विच के लिए लेबल" \
    "ग्रेडिएंट अपारदर्शिता" \
    "ग्रेडिएंट अपारदर्शिता स्लाइडर के लिए लेबल"

# Arabic (ar)
create_locale "ar-001" \
    "دمج متدرج لأحداث Google Calendar™" \
    "يدمج أحداث Google Calendar المكررة في قوس قزح ويلون عطلات نهاية الأسبوع" \
    "اسم الإضافة التي تدمج أحداث التقويم المكررة مع التدرجات." \
    "وصف يشرح الوظيفة الرئيسية للإضافة." \
    "تمكين الإضافة" \
    "تسمية لمفتاح تشغيل/إيقاف الإضافة" \
    "شفافية التدرج" \
    "تسمية لشريط تمرير شفافية التدرج"

# Portuguese (pt)
create_locale "pt" \
    "Mesclagem Gradiente para Eventos do Google Calendar™" \
    "Mescla eventos duplicados do Google Calendar em um arco-íris e colore os fins de semana" \
    "Nome da extensão que mescla eventos duplicados do calendário com gradientes." \
    "Descrição explicando a funcionalidade principal da extensão." \
    "Ativar Extensão" \
    "Rótulo para o interruptor de ativar/desativar a extensão" \
    "Opacidade do Gradiente" \
    "Rótulo para o controle deslizante de opacidade do gradiente"

# Russian (ru)
create_locale "ru" \
    "Градиентное объединение событий Google Calendar™" \
    "Объединяет повторяющиеся события Google Calendar в радугу и окрашивает выходные" \
    "Название расширения, объединяющего повторяющиеся события календаря с градиентами." \
    "Описание, объясняющее основную функциональность расширения." \
    "Включить Расширение" \
    "Метка для переключателя включения/выключения расширения" \
    "Прозрачность Градиента" \
    "Метка для ползунка прозрачности градиента"

# Japanese (ja)
create_locale "ja" \
    "Google Calendar™ イベントのグラデーションマージ" \
    "重複する Google Calendar のイベントを1つの虹色にマージし、週末に色を付けます" \
    "グラデーションで重複カレンダーイベントをマージする拡張機能の名前。" \
    "拡張機能の主な機能を説明する説明文。" \
    "拡張機能を有効にする" \
    "拡張機能の有効/無効を切り替えるスイッチのラベル" \
    "グラデーションの不透明度" \
    "グラデーションの不透明度スライダーのラベル"

# German (de)
create_locale "de" \
    "Gradient-Zusammenführung für Google Calendar™ Ereignisse" \
    "Führt doppelte Google Calendar Ereignisse in einem Regenbogen zusammen und färbt die Wochenenden" \
    "Name der Erweiterung, die doppelte Kalenderereignisse mit Farbverläufen zusammenführt." \
    "Beschreibung der Hauptfunktionalität der Erweiterung." \
    "Erweiterung Aktivieren" \
    "Beschriftung für den Ein/Aus-Schalter der Erweiterung" \
    "Gradient-Deckkraft" \
    "Beschriftung für den Gradient-Deckkraft-Regler"

# French (fr)
create_locale "fr" \
    "Fusion en dégradé pour événements Google Calendar™" \
    "Fusionne les événements Google Calendar en double dans un arc-en-ciel et colore les week-ends" \
    "Nom de l'extension qui fusionne les événements en double du calendrier avec des dégradés." \
    "Description expliquant la fonctionnalité principale de l'extension." \
    "Activer l'Extension" \
    "Étiquette pour l'interrupteur d'activation/désactivation de l'extension" \
    "Opacité du Dégradé" \
    "Étiquette pour le curseur d'opacité du dégradé"

# Italian (it)
create_locale "it" \
    "Fusione Gradiente per Eventi di Google Calendar™" \
    "Unisce eventi duplicati di Google Calendar in un arcobaleno e colora i fine settimana" \
    "Nome dell'estensione che unisce eventi duplicati del calendario con gradienti." \
    "Descrizione che spiega la funzionalità principale dell'estensione." \
    "Attiva Estensione" \
    "Etichetta per l'interruttore di attivazione/disattivazione dell'estensione" \
    "Opacità del Gradiente" \
    "Etichetta per il cursore dell'opacità del gradiente"

# Korean (ko)
create_locale "ko" \
    "Google Calendar™ 이벤트 그라데이션 병합" \
    "중복된 Google Calendar 이벤트를 무지개색으로 병합하고 주말에 색상을 입힙니다" \
    "그라데이션으로 중복 캘린더 이벤트를 병합하는 확장 프로그램의 이름입니다." \
    "확장 프로그램의 주요 기능을 설명하는 설명입니다." \
    "확장 프로그램 활성화" \
    "확장 프로그램 활성화/비활성화 토글 스위치의 레이블" \
    "그라데이션 불투명도" \
    "그라데이션 불투명도 슬라이더의 레이블"

# Dutch (nl)
create_locale "nl" \
    "Gradiënt Samenvoegen voor Google Calendar™ Gebeurtenissen" \
    "Voegt dubbele Google Calendar gebeurtenissen samen in een regenboog en kleurt de weekenden" \
    "Naam van de extensie die dubbele agenda-gebeurtenissen samenvoegt met gradiënten." \
    "Beschrijving die de hoofdfunctionaliteit van de extensie uitlegt." \
    "Extensie Inschakelen" \
    "Label voor de extensie aan/uit-schakelaar" \
    "Gradiënt Transparantie" \
    "Label voor de gradiënt transparantie schuifregelaar"

# Polish (pl)
create_locale "pl" \
    "Gradientowe Łączenie Wydarzeń Google Calendar™" \
    "Łączy zduplikowane wydarzenia Google Calendar w tęczę i koloruje weekendy" \
    "Nazwa rozszerzenia łączącego zduplikowane wydarzenia kalendarza z gradientami." \
    "Opis wyjaśniający główną funkcjonalność rozszerzenia." \
    "Włącz Rozszerzenie" \
    "Etykieta dla przełącznika włączania/wyłączania rozszerzenia" \
    "Przezroczystość Gradientu" \
    "Etykieta dla suwaka przezroczystości gradientu"

# Turkish (tr)
create_locale "tr" \
    "Google Calendar™ Etkinlikleri için Gradyan Birleştirme" \
    "Yinelenen Google Calendar etkinliklerini gökkuşağına dönüştürür ve haftasonlarını renklendirir" \
    "Yinelenen takvim etkinliklerini gradyanlarla birleştiren uzantının adı." \
    "Uzantının ana işlevini açıklayan açıklama." \
    "Uzantıyı Etkinleştir" \
    "Uzantı etkinleştirme/devre dışı bırakma düğmesi için etiket" \
    "Gradyan Opaklığı" \
    "Gradyan opaklık kaydırıcısı için etiket"

# Vietnamese (vi)
create_locale "vi" \
    "Kết hợp Gradient cho Sự kiện Google Calendar™" \
    "Kết hợp các sự kiện trùng lặp của Google Calendar thành cầu vồng và tô màu các ngày cuối tuần" \
    "Tên tiện ích mở rộng kết hợp các sự kiện lịch trùng lặp với gradient." \
    "Mô tả giải thích chức năng chính của tiện ích mở rộng." \
    "Bật Tiện Ích Mở Rộng" \
    "Nhãn cho công tắc bật/tắt tiện ích mở rộng" \
    "Độ Mờ Gradient" \
    "Nhãn cho thanh trượt độ mờ gradient"

# Thai (th)
create_locale "th" \
    "การผสานแบบไล่ระดับสำหรับกิจกรรม Google Calendar™" \
    "ผสานกิจกรรม Google Calendar ที่ซ้ำซ้อนให้เป็นสีรุ้งและระบายสีวันสุดสัปดาห์" \
    "ชื่อส่วนขยายที่ผสานกิจกรรมปฏิทินที่ซ้ำซ้อนด้วยการไล่ระดับ" \
    "คำอธิบายที่อธิบายฟังก์ชันหลักของส่วนขยาย" \
    "เปิดใช้งานส่วนขยาย" \
    "ป้ายกำกับสำหรับสวิตช์เปิด/ปิดส่วนขยาย" \
    "ความทึบของการไล่ระดับ" \
    "ป้ายกำกับสำหรับตัวเลื่อนความทึบของการไล่ระดับ"

# Indonesian (id)
create_locale "id" \
    "Penggabungan Gradien untuk Acara Google Calendar™" \
    "Menggabungkan acara Google Calendar yang duplikat menjadi pelangi dan mewarnai akhir pekan" \
    "Nama ekstensi yang menggabungkan acara kalender duplikat dengan gradien." \
    "Deskripsi yang menjelaskan fungsi utama ekstensi." \
    "Aktifkan Ekstensi" \
    "Label untuk tombol aktif/nonaktif ekstensi" \
    "Kegelapan Gradien" \
    "Label untuk penggeser kegelapan gradien"

# Ukrainian (uk) continued
create_locale "uk" \
    "Градієнтне об'єднання подій Google Calendar™" \
    "Об'єднує повторювані події Google Calendar у веселку та розфарбовує вихідні" \
    "Назва розширення, що об'єднує повторювані події календаря з градієнтами." \
    "Опис, що пояснює основну функціональність розширення." \
    "Увімкнути Розширення" \
    "Мітка для перемикача увімкнення/вимкнення розширення" \
    "Непрозорість Градієнта" \
    "Мітка для повзунка непрозорості градієнта"

# Romanian (ro)
create_locale "ro" \
    "Fuziune Gradientă pentru Evenimente Google Calendar™" \
    "Combină evenimentele duplicate din Google Calendar într-un curcubeu și colorează weekendurile" \
    "Numele extensiei care combină evenimente duplicate din calendar cu gradiente." \
    "Descriere care explică funcționalitatea principală a extensiei." \
    "Activare Extensie" \
    "Etichetă pentru comutatorul de activare/dezactivare a extensiei" \
    "Opacitate Gradient" \
    "Etichetă pentru glisorul de opacitate al gradientului"

echo "Localization files have been created successfully!"