import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ar'),
    Locale('de'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ru'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Filename Change Preview'**
  String get appTitle;

  /// No description provided for @appDescription.
  ///
  /// In en, this message translates to:
  /// **'Preview filename changes and detect duplicate results without accessing your files.'**
  String get appDescription;

  /// No description provided for @languageMenuTooltip.
  ///
  /// In en, this message translates to:
  /// **'Choose language'**
  String get languageMenuTooltip;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// No description provided for @appearanceTooltip.
  ///
  /// In en, this message translates to:
  /// **'Choose appearance'**
  String get appearanceTooltip;

  /// No description provided for @appearanceMaterial.
  ///
  /// In en, this message translates to:
  /// **'Material'**
  String get appearanceMaterial;

  /// No description provided for @appearanceFlat.
  ///
  /// In en, this message translates to:
  /// **'Flat'**
  String get appearanceFlat;

  /// No description provided for @appearanceSoft.
  ///
  /// In en, this message translates to:
  /// **'Soft'**
  String get appearanceSoft;

  /// No description provided for @purpose.
  ///
  /// In en, this message translates to:
  /// **'Preview changes without accessing or renaming files. One filename per nonblank line.'**
  String get purpose;

  /// No description provided for @currentFilenames.
  ///
  /// In en, this message translates to:
  /// **'Current filenames'**
  String get currentFilenames;

  /// No description provided for @filenamesHint.
  ///
  /// In en, this message translates to:
  /// **'photo 1.jpg\nphoto 2.jpg'**
  String get filenamesHint;

  /// No description provided for @findText.
  ///
  /// In en, this message translates to:
  /// **'Find text'**
  String get findText;

  /// No description provided for @replaceWith.
  ///
  /// In en, this message translates to:
  /// **'Replace with'**
  String get replaceWith;

  /// No description provided for @prefix.
  ///
  /// In en, this message translates to:
  /// **'Prefix'**
  String get prefix;

  /// No description provided for @suffix.
  ///
  /// In en, this message translates to:
  /// **'Suffix'**
  String get suffix;

  /// No description provided for @stemOnly.
  ///
  /// In en, this message translates to:
  /// **'Apply to name stem only'**
  String get stemOnly;

  /// No description provided for @previewChanges.
  ///
  /// In en, this message translates to:
  /// **'Preview changes'**
  String get previewChanges;

  /// No description provided for @clearInput.
  ///
  /// In en, this message translates to:
  /// **'Clear input'**
  String get clearInput;

  /// No description provided for @previewResults.
  ///
  /// In en, this message translates to:
  /// **'Preview results'**
  String get previewResults;

  /// No description provided for @changedCount.
  ///
  /// In en, this message translates to:
  /// **'Changed: {count}'**
  String changedCount(int count);

  /// No description provided for @unchangedCount.
  ///
  /// In en, this message translates to:
  /// **'Unchanged: {count}'**
  String unchangedCount(int count);

  /// No description provided for @collisionsCount.
  ///
  /// In en, this message translates to:
  /// **'Collisions: {count}'**
  String collisionsCount(int count);

  /// No description provided for @rowNumber.
  ///
  /// In en, this message translates to:
  /// **'Row {row}'**
  String rowNumber(int row);

  /// No description provided for @duplicateRows.
  ///
  /// In en, this message translates to:
  /// **'Duplicate proposed name on rows {rows}'**
  String duplicateRows(String rows);

  /// No description provided for @errorNoFilenames.
  ///
  /// In en, this message translates to:
  /// **'Enter at least one filename.'**
  String get errorNoFilenames;

  /// No description provided for @errorTooManyCharacters.
  ///
  /// In en, this message translates to:
  /// **'Input cannot exceed 50,000 characters.'**
  String get errorTooManyCharacters;

  /// No description provided for @errorTooManyFilenames.
  ///
  /// In en, this message translates to:
  /// **'Enter no more than 500 filenames.'**
  String get errorTooManyFilenames;

  /// No description provided for @errorNoRule.
  ///
  /// In en, this message translates to:
  /// **'Add at least one change rule.'**
  String get errorNoRule;

  /// No description provided for @errorForbiddenCharacter.
  ///
  /// In en, this message translates to:
  /// **'Names and rules cannot contain control characters, /, or \\.'**
  String get errorForbiddenCharacter;

  /// No description provided for @errorEmptyProposedName.
  ///
  /// In en, this message translates to:
  /// **'A rule produces an empty filename.'**
  String get errorEmptyProposedName;

  /// No description provided for @errorProposedNameTooLong.
  ///
  /// In en, this message translates to:
  /// **'A proposed filename exceeds 255 Unicode characters.'**
  String get errorProposedNameTooLong;

  /// No description provided for @helpTooltip.
  ///
  /// In en, this message translates to:
  /// **'Help & Guide'**
  String get helpTooltip;

  /// No description provided for @helpTitle.
  ///
  /// In en, this message translates to:
  /// **'Filename Change Preview Guide'**
  String get helpTitle;

  /// No description provided for @helpProblemSolvedTitle.
  ///
  /// In en, this message translates to:
  /// **'Problem Solved'**
  String get helpProblemSolvedTitle;

  /// No description provided for @helpProblemSolvedContent.
  ///
  /// In en, this message translates to:
  /// **'Previews batch filename transformations (prefix, suffix, find/replace, numbering) offline and flags potential name collisions before making real changes.'**
  String get helpProblemSolvedContent;

  /// No description provided for @helpHowToUseTitle.
  ///
  /// In en, this message translates to:
  /// **'How to Use'**
  String get helpHowToUseTitle;

  /// No description provided for @helpHowToUseContent.
  ///
  /// In en, this message translates to:
  /// **'Paste original filenames (one per line). Configure prefix, suffix, text replacement, or case transforms to see the updated output instantly.'**
  String get helpHowToUseContent;

  /// No description provided for @helpReadingResultsTitle.
  ///
  /// In en, this message translates to:
  /// **'Reading Results'**
  String get helpReadingResultsTitle;

  /// No description provided for @helpReadingResultsContent.
  ///
  /// In en, this message translates to:
  /// **'Shows side-by-side original and transformed filenames, counts total changed names, and highlights duplicated filenames in warning colors.'**
  String get helpReadingResultsContent;

  /// No description provided for @helpExampleTitle.
  ///
  /// In en, this message translates to:
  /// **'Example'**
  String get helpExampleTitle;

  /// No description provided for @helpExampleContent.
  ///
  /// In en, this message translates to:
  /// **'Original:\nphoto_1.jpg\nphoto_2.jpg\nRule: Prefix \"2026_\" & Replace \"_\" -> \"-\"\nResult: 2026_photo-1.jpg, 2026_photo-2.jpg (0 collisions).'**
  String get helpExampleContent;

  /// No description provided for @helpLimitsTitle.
  ///
  /// In en, this message translates to:
  /// **'Validation & Limitations'**
  String get helpLimitsTitle;

  /// No description provided for @helpLimitsContent.
  ///
  /// In en, this message translates to:
  /// **'Text string simulator only. Does not access the device file system, read storage permissions, or physically rename files on disk.'**
  String get helpLimitsContent;

  /// No description provided for @helpDataAndPrivacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Local Data & Ads'**
  String get helpDataAndPrivacyTitle;

  /// No description provided for @helpDataAndPrivacyContent.
  ///
  /// In en, this message translates to:
  /// **'Filenames are parsed purely in-memory on your device without storage access or uploads. A standard AdMob banner is displayed below.'**
  String get helpDataAndPrivacyContent;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'ko',
    'nl',
    'pt',
    'ru',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hans':
            return AppLocalizationsZhHans();
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
