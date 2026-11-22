// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Filename Change Preview';

  @override
  String get appDescription =>
      'Preview filename changes and detect duplicate results without accessing your files.';

  @override
  String get languageMenuTooltip => 'Choose language';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get appearanceTooltip => 'Choose appearance';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Flat';

  @override
  String get appearanceSoft => 'Soft';

  @override
  String get purpose =>
      'Preview changes without accessing or renaming files. One filename per nonblank line.';

  @override
  String get currentFilenames => 'Current filenames';

  @override
  String get filenamesHint => 'photo 1.jpg\nphoto 2.jpg';

  @override
  String get findText => 'Find text';

  @override
  String get replaceWith => 'Replace with';

  @override
  String get prefix => 'Prefix';

  @override
  String get suffix => 'Suffix';

  @override
  String get stemOnly => 'Apply to name stem only';

  @override
  String get previewChanges => 'Preview changes';

  @override
  String get clearInput => 'Clear input';

  @override
  String get previewResults => 'Preview results';

  @override
  String changedCount(int count) {
    return 'Changed: $count';
  }

  @override
  String unchangedCount(int count) {
    return 'Unchanged: $count';
  }

  @override
  String collisionsCount(int count) {
    return 'Collisions: $count';
  }

  @override
  String rowNumber(int row) {
    return 'Row $row';
  }

  @override
  String duplicateRows(String rows) {
    return 'Duplicate proposed name on rows $rows';
  }

  @override
  String get errorNoFilenames => 'Enter at least one filename.';

  @override
  String get errorTooManyCharacters => 'Input cannot exceed 50,000 characters.';

  @override
  String get errorTooManyFilenames => 'Enter no more than 500 filenames.';

  @override
  String get errorNoRule => 'Add at least one change rule.';

  @override
  String get errorForbiddenCharacter =>
      'Names and rules cannot contain control characters, /, or \\.';

  @override
  String get errorEmptyProposedName => 'A rule produces an empty filename.';

  @override
  String get errorProposedNameTooLong =>
      'A proposed filename exceeds 255 Unicode characters.';

  @override
  String get helpTooltip => 'Help & Guide';

  @override
  String get helpTitle => 'Filename Change Preview Guide';

  @override
  String get helpProblemSolvedTitle => 'Problem Solved';

  @override
  String get helpProblemSolvedContent =>
      'Previews batch filename transformations (prefix, suffix, find/replace, numbering) offline and flags potential name collisions before making real changes.';

  @override
  String get helpHowToUseTitle => 'How to Use';

  @override
  String get helpHowToUseContent =>
      'Paste original filenames (one per line). Configure prefix, suffix, text replacement, or case transforms to see the updated output instantly.';

  @override
  String get helpReadingResultsTitle => 'Reading Results';

  @override
  String get helpReadingResultsContent =>
      'Shows side-by-side original and transformed filenames, counts total changed names, and highlights duplicated filenames in warning colors.';

  @override
  String get helpExampleTitle => 'Example';

  @override
  String get helpExampleContent =>
      'Original:\nphoto_1.jpg\nphoto_2.jpg\nRule: Prefix \"2026_\" & Replace \"_\" -> \"-\"\nResult: 2026_photo-1.jpg, 2026_photo-2.jpg (0 collisions).';

  @override
  String get helpLimitsTitle => 'Validation & Limitations';

  @override
  String get helpLimitsContent =>
      'Text string simulator only. Does not access the device file system, read storage permissions, or physically rename files on disk.';

  @override
  String get helpDataAndPrivacyTitle => 'Local Data & Ads';

  @override
  String get helpDataAndPrivacyContent =>
      'Filenames are parsed purely in-memory on your device without storage access or uploads. A standard AdMob banner is displayed below.';
}
