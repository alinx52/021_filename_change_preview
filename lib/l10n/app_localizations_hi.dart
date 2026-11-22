// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'फ़ाइल नाम बदलाव पूर्वावलोकन';

  @override
  String get appDescription =>
      'फ़ाइलों को खोले बिना नाम बदलाव देखें और डुप्लिकेट परिणाम पहचानें।';

  @override
  String get languageMenuTooltip => 'भाषा चुनें';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get appearanceTooltip => 'रूप चुनें';

  @override
  String get appearanceMaterial => 'मटीरियल';

  @override
  String get appearanceFlat => 'समतल';

  @override
  String get appearanceSoft => 'कोमल';

  @override
  String get purpose =>
      'फ़ाइलों को खोले या नाम बदले बिना परिणाम देखें। हर गैर-खाली पंक्ति में एक फ़ाइल नाम लिखें।';

  @override
  String get currentFilenames => 'वर्तमान फ़ाइल नाम';

  @override
  String get filenamesHint => 'फ़ोटो 1.jpg\nफ़ोटो 2.jpg';

  @override
  String get findText => 'खोजने का पाठ';

  @override
  String get replaceWith => 'इससे बदलें';

  @override
  String get prefix => 'उपसर्ग';

  @override
  String get suffix => 'प्रत्यय';

  @override
  String get stemOnly => 'केवल एक्सटेंशन से पहले के नाम पर लागू करें';

  @override
  String get previewChanges => 'बदलाव देखें';

  @override
  String get clearInput => 'इनपुट मिटाएँ';

  @override
  String get previewResults => 'पूर्वावलोकन परिणाम';

  @override
  String changedCount(int count) {
    return 'बदले गए: $count';
  }

  @override
  String unchangedCount(int count) {
    return 'बिना बदलाव: $count';
  }

  @override
  String collisionsCount(int count) {
    return 'डुप्लिकेट: $count';
  }

  @override
  String rowNumber(int row) {
    return 'पंक्ति $row';
  }

  @override
  String duplicateRows(String rows) {
    return 'प्रस्तावित नाम पंक्तियों $rows में दोहराया गया है';
  }

  @override
  String get errorNoFilenames => 'कम से कम एक फ़ाइल नाम लिखें।';

  @override
  String get errorTooManyCharacters =>
      'इनपुट 50,000 वर्णों से अधिक नहीं हो सकता।';

  @override
  String get errorTooManyFilenames => 'अधिकतम 500 फ़ाइल नाम लिखें।';

  @override
  String get errorNoRule => 'कम से कम एक बदलाव नियम जोड़ें।';

  @override
  String get errorForbiddenCharacter =>
      'नाम और नियम में नियंत्रण वर्ण, / या \\ नहीं हो सकते।';

  @override
  String get errorEmptyProposedName => 'एक नियम से खाली फ़ाइल नाम बन रहा है।';

  @override
  String get errorProposedNameTooLong =>
      'प्रस्तावित फ़ाइल नाम 255 Unicode वर्णों से अधिक है।';

  @override
  String get helpTooltip => 'सहायता और मार्गदर्शिका';

  @override
  String get helpTitle => 'फ़ाइल नाम परिवर्तन पूर्वावलोकन मार्गदर्शिका';

  @override
  String get helpProblemSolvedTitle => 'समस्या का समाधान';

  @override
  String get helpProblemSolvedContent =>
      'वास्तविक बदलाव करने से पहले फ़ाइल नाम परिवर्तनों (उपसर्ग, प्रत्यय, खोजें/बदलें) का पूर्वावलोकन करता है और टकरावों की पहचान करता है।';

  @override
  String get helpHowToUseTitle => 'उपयोग कैसे करें';

  @override
  String get helpHowToUseContent =>
      'मूल फ़ाइल नाम चिपकाएं (प्रति पंक्ति एक)। पूर्वावलोकन देखने के लिए उपसर्ग, प्रत्यय, या पाठ प्रतिस्थापन कॉन्फ़िगर करें।';

  @override
  String get helpReadingResultsTitle => 'परिणाम कैसे समझें';

  @override
  String get helpReadingResultsContent =>
      'मूल और परिवर्तित फ़ाइल नामों को साथ-साथ दिखाता है, बदले गए नामों की गणना करता है और डुप्लिकेट नामों को हाइलाइट करता है।';

  @override
  String get helpExampleTitle => 'उदाहरण';

  @override
  String get helpExampleContent =>
      'मूल:\nphoto_1.jpg\nphoto_2.jpg\nनियम: उपसर्ग \"2026_\" और \"_\" को \"-\" से बदलें\nपरिणाम: 2026_photo-1.jpg, 2026_photo-2.jpg (0 टकराव)।';

  @override
  String get helpLimitsTitle => 'सत्यापन और सीमाएं';

  @override
  String get helpLimitsContent =>
      'केवल टेक्स्ट स्ट्रिंग सिम्युलेटर है। डिवाइस फ़ाइल सिस्टम तक नहीं पहुंचता है और न ही डिस्क पर फ़ाइलों का नाम बदलता है।';

  @override
  String get helpDataAndPrivacyTitle => 'स्थानीय डेटा और विज्ञापन';

  @override
  String get helpDataAndPrivacyContent =>
      'फ़ाइल नाम बिना स्टोरेज एक्सेस या अपलोड के डिवाइस पर मेमोरी में संसाधित होते हैं। नीचे एक AdMob बैनर दिखाया गया है।';
}
