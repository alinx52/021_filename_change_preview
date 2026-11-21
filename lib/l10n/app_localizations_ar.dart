// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'معاينة تغيير أسماء الملفات';

  @override
  String get appDescription =>
      'عاين تغييرات الأسماء واكتشف النتائج المكررة من دون الوصول إلى ملفاتك.';

  @override
  String get languageMenuTooltip => 'اختيار اللغة';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get appearanceTooltip => 'اختيار المظهر';

  @override
  String get appearanceMaterial => 'مادي';

  @override
  String get appearanceFlat => 'مسطح';

  @override
  String get appearanceSoft => 'ناعم';

  @override
  String get purpose =>
      'عاين التغييرات من دون الوصول إلى الملفات أو إعادة تسميتها. أدخل اسم ملف واحدًا في كل سطر غير فارغ.';

  @override
  String get currentFilenames => 'أسماء الملفات الحالية';

  @override
  String get filenamesHint => 'صورة 1.jpg\nصورة 2.jpg';

  @override
  String get findText => 'النص المطلوب';

  @override
  String get replaceWith => 'الاستبدال بـ';

  @override
  String get prefix => 'بادئة';

  @override
  String get suffix => 'لاحقة';

  @override
  String get stemOnly => 'التطبيق على أصل الاسم فقط';

  @override
  String get previewChanges => 'معاينة التغييرات';

  @override
  String get clearInput => 'مسح الإدخال';

  @override
  String get previewResults => 'نتائج المعاينة';

  @override
  String changedCount(int count) {
    return 'تم التغيير: $count';
  }

  @override
  String unchangedCount(int count) {
    return 'بلا تغيير: $count';
  }

  @override
  String collisionsCount(int count) {
    return 'التكرارات: $count';
  }

  @override
  String rowNumber(int row) {
    return 'السطر $row';
  }

  @override
  String duplicateRows(String rows) {
    return 'الاسم المقترح مكرر في الأسطر $rows';
  }

  @override
  String get errorNoFilenames => 'أدخل اسم ملف واحدًا على الأقل.';

  @override
  String get errorTooManyCharacters => 'يجب ألا يتجاوز الإدخال 50,000 محرف.';

  @override
  String get errorTooManyFilenames => 'أدخل 500 اسم ملف كحد أقصى.';

  @override
  String get errorNoRule => 'أضف قاعدة تغيير واحدة على الأقل.';

  @override
  String get errorForbiddenCharacter =>
      'لا يجوز أن تتضمن الأسماء والقواعد محارف تحكم أو / أو \\.';

  @override
  String get errorEmptyProposedName => 'تنتج إحدى القواعد اسم ملف فارغًا.';

  @override
  String get errorProposedNameTooLong => 'يتجاوز اسم مقترح 255 محرف Unicode.';
}
