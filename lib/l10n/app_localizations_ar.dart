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

  @override
  String get helpTooltip => 'المساعدة والدليل';

  @override
  String get helpTitle => 'دليل معاينة تغيير أسماء الملفات';

  @override
  String get helpProblemSolvedTitle => 'المشكلة التي يعالجها';

  @override
  String get helpProblemSolvedContent =>
      'يعاين التغييرات المجمعة لأسماء الملفات (بادئة، لاحقة، استبدال، ترقيم) ويكتشف تعارضات الأسماء المكررة مسبقًا.';

  @override
  String get helpHowToUseTitle => 'طريقة الاستخدام';

  @override
  String get helpHowToUseContent =>
      'الصق أسماء الملفات الأصلية (اسم لكل سطر). اضبط البادئة أو اللاحقة أو نص الاستبدال لمعاينة النتيجة فورًا.';

  @override
  String get helpReadingResultsTitle => 'قراءة النتائج';

  @override
  String get helpReadingResultsContent =>
      'يعرض أسماء الملفات الأصلية والمعدلة جنبًا إلى جنب، ويحسب عدد التغييرات، ويميز الأسماء المكررة بتحذيرات.';

  @override
  String get helpExampleTitle => 'مثال توضيحي';

  @override
  String get helpExampleContent =>
      'الأصل:\nphoto_1.jpg\nphoto_2.jpg\nالقاعدة: إضافة البادئة \"2026_\" واستبدال \"_\" بـ \"-\"\nالنتيجة: 2026_photo-1.jpg, 2026_photo-2.jpg (بدون تعارض).';

  @override
  String get helpLimitsTitle => 'التحقق والقيود';

  @override
  String get helpLimitsContent =>
      'محاكي نصوص فقط. لا يصل إلى نظام الملفات في الجهاز ولا يعيد تسمية الملفات الفعلية على وحدة التخزين.';

  @override
  String get helpDataAndPrivacyTitle => 'البيانات المحلية والإعلانات';

  @override
  String get helpDataAndPrivacyContent =>
      'تتم معالجة أسماء الملفات في الذاكرة فقط دون تخزين أو رفع. يظهر شريط إعلاني قياسي من AdMob أسفل الشاشة.';
}
