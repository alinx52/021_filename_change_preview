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
}
