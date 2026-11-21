// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Voorbeeld bestandsnamen';

  @override
  String get appDescription =>
      'Bekijk wijzigingen in bestandsnamen en vind dubbele resultaten zonder bestanden te openen.';

  @override
  String get languageMenuTooltip => 'Taal kiezen';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get appearanceTooltip => 'Weergave kiezen';

  @override
  String get appearanceMaterial => 'Materiaal';

  @override
  String get appearanceFlat => 'Vlak';

  @override
  String get appearanceSoft => 'Zacht';

  @override
  String get purpose =>
      'Bekijk wijzigingen zonder bestanden te openen of te hernoemen. Voer per niet-lege regel één bestandsnaam in.';

  @override
  String get currentFilenames => 'Huidige bestandsnamen';

  @override
  String get filenamesHint => 'foto 1.jpg\nfoto 2.jpg';

  @override
  String get findText => 'Tekst zoeken';

  @override
  String get replaceWith => 'Vervangen door';

  @override
  String get prefix => 'Voorvoegsel';

  @override
  String get suffix => 'Achtervoegsel';

  @override
  String get stemOnly => 'Alleen toepassen op naam zonder extensie';

  @override
  String get previewChanges => 'Wijzigingen bekijken';

  @override
  String get clearInput => 'Invoer wissen';

  @override
  String get previewResults => 'Voorbeeldresultaten';

  @override
  String changedCount(int count) {
    return 'Gewijzigd: $count';
  }

  @override
  String unchangedCount(int count) {
    return 'Ongewijzigd: $count';
  }

  @override
  String collisionsCount(int count) {
    return 'Dubbele namen: $count';
  }

  @override
  String rowNumber(int row) {
    return 'Rij $row';
  }

  @override
  String duplicateRows(String rows) {
    return 'Voorgestelde naam is dubbel in rijen $rows';
  }

  @override
  String get errorNoFilenames => 'Voer minstens één bestandsnaam in.';

  @override
  String get errorTooManyCharacters =>
      'De invoer mag niet langer zijn dan 50.000 tekens.';

  @override
  String get errorTooManyFilenames => 'Voer maximaal 500 bestandsnamen in.';

  @override
  String get errorNoRule => 'Voeg minstens één wijzigingsregel toe.';

  @override
  String get errorForbiddenCharacter =>
      'Namen en regels mogen geen besturingstekens, / of \\ bevatten.';

  @override
  String get errorEmptyProposedName =>
      'Een regel levert een lege bestandsnaam op.';

  @override
  String get errorProposedNameTooLong =>
      'Een voorgestelde naam is langer dan 255 Unicode-tekens.';
}
