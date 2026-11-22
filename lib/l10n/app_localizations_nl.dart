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

  @override
  String get helpTooltip => 'Hulp en gids';

  @override
  String get helpTitle => 'Gids voor bestandsnaamwijziging';

  @override
  String get helpProblemSolvedTitle => 'Opgelost probleem';

  @override
  String get helpProblemSolvedContent =>
      'Bekijkt vooraf batch-bestandsnaamwijzigingen (voorvoegsel, achtervoegsel, vervangen) en waarschuwt voor dubbele namen.';

  @override
  String get helpHowToUseTitle => 'Gebruiksaanwijzing';

  @override
  String get helpHowToUseContent =>
      'Plak originele bestandsnamen (één per regel). Stel voorvoegsels, achtervoegsels of vervangingen in voor een directe weergave.';

  @override
  String get helpReadingResultsTitle => 'Resultaten aflezen';

  @override
  String get helpReadingResultsContent =>
      'Toont originele en gewijzigde namen naast elkaar, telt het aantal wijzigingen en markeert dubbele namen.';

  @override
  String get helpExampleTitle => 'Voorbeeld';

  @override
  String get helpExampleContent =>
      'Origineel:\nphoto_1.jpg\nphoto_2.jpg\nRegel: Voorvoegsel \"2026_\" & Vervang \"_\" door \"-\"\nResultaat: 2026_photo-1.jpg, 2026_photo-2.jpg (0 conflicten).';

  @override
  String get helpLimitsTitle => 'Validatie & Beperkingen';

  @override
  String get helpLimitsContent =>
      'Uitsluitend tekstsimulator. Heeft geen toegang tot bestandsopslag en hernoemt geen daadwerkelijke bestanden.';

  @override
  String get helpDataAndPrivacyTitle => 'Lokale gegevens & Advertenties';

  @override
  String get helpDataAndPrivacyContent =>
      'Bestandsnamen worden uitsluitend in het geheugen verwerkt zonder opslag of upload. Onderaan staat een AdMob-banner.';
}
