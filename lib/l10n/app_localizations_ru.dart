// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Предпросмотр имён файлов';

  @override
  String get appDescription =>
      'Проверяйте изменения имён и дубликаты без доступа к файлам.';

  @override
  String get languageMenuTooltip => 'Выбрать язык';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get appearanceTooltip => 'Выбрать оформление';

  @override
  String get appearanceMaterial => 'Материальное';

  @override
  String get appearanceFlat => 'Плоское';

  @override
  String get appearanceSoft => 'Мягкое';

  @override
  String get purpose =>
      'Просматривайте изменения без доступа к файлам и переименования. Введите одно имя в каждой непустой строке.';

  @override
  String get currentFilenames => 'Текущие имена файлов';

  @override
  String get filenamesHint => 'фото 1.jpg\nфото 2.jpg';

  @override
  String get findText => 'Найти текст';

  @override
  String get replaceWith => 'Заменить на';

  @override
  String get prefix => 'Префикс';

  @override
  String get suffix => 'Суффикс';

  @override
  String get stemOnly => 'Применить только к имени без расширения';

  @override
  String get previewChanges => 'Показать изменения';

  @override
  String get clearInput => 'Очистить ввод';

  @override
  String get previewResults => 'Результаты предпросмотра';

  @override
  String changedCount(int count) {
    return 'Изменено: $count';
  }

  @override
  String unchangedCount(int count) {
    return 'Без изменений: $count';
  }

  @override
  String collisionsCount(int count) {
    return 'Дубликаты: $count';
  }

  @override
  String rowNumber(int row) {
    return 'Строка $row';
  }

  @override
  String duplicateRows(String rows) {
    return 'Предлагаемое имя повторяется в строках $rows';
  }

  @override
  String get errorNoFilenames => 'Введите хотя бы одно имя файла.';

  @override
  String get errorTooManyCharacters =>
      'Ввод не может превышать 50 000 символов.';

  @override
  String get errorTooManyFilenames => 'Введите не более 500 имён файлов.';

  @override
  String get errorNoRule => 'Добавьте хотя бы одно правило изменения.';

  @override
  String get errorForbiddenCharacter =>
      'Имена и правила не могут содержать управляющие символы, / или \\.';

  @override
  String get errorEmptyProposedName => 'Правило создаёт пустое имя файла.';

  @override
  String get errorProposedNameTooLong =>
      'Предлагаемое имя превышает 255 символов Unicode.';

  @override
  String get helpTooltip => 'Справка и руководство';

  @override
  String get helpTitle =>
      'Руководство по предварительному просмотру имен файлов';

  @override
  String get helpProblemSolvedTitle => 'Решаемая задача';

  @override
  String get helpProblemSolvedContent =>
      'Предварительно просматривает массовое переименование файлов (префикс, суффикс, замена) и предупреждает о совпадениях имен.';

  @override
  String get helpHowToUseTitle => 'Как использовать';

  @override
  String get helpHowToUseContent =>
      'Вставьте исходные имена файлов (по одному на строку). Настройте префикс, суффикс или замену для мгновенного просмотра.';

  @override
  String get helpReadingResultsTitle => 'Чтение результатов';

  @override
  String get helpReadingResultsContent =>
      'Показывает исходные и измененные имена рядом, подсчитывает число изменений и выделяет совпадения цветом.';

  @override
  String get helpExampleTitle => 'Пример';

  @override
  String get helpExampleContent =>
      'Исходные:\nphoto_1.jpg\nphoto_2.jpg\nПравило: Префикс \"2026_\" и замена \"_\" на \"-\"\nРезультат: 2026_photo-1.jpg, 2026_photo-2.jpg (0 конфликтов).';

  @override
  String get helpLimitsTitle => 'Проверка и ограничения';

  @override
  String get helpLimitsContent =>
      'Симулятор работы с текстом. Не запрашивает доступ к хранилищу и не изменяет реальные файлы на диске.';

  @override
  String get helpDataAndPrivacyTitle => 'Локальные данные и реклама';

  @override
  String get helpDataAndPrivacyContent =>
      'Имена файлов обрабатываются в памяти устройства без передачи на серверы. Внизу отображается баннер AdMob.';
}
