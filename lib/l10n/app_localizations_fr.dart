// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Aperçu du renommage';

  @override
  String get appDescription =>
      'Prévisualisez les changements de noms et détectez les doublons sans accéder aux fichiers.';

  @override
  String get languageMenuTooltip => 'Choisir la langue';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get appearanceTooltip => 'Choisir l’apparence';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Plate';

  @override
  String get appearanceSoft => 'Douce';

  @override
  String get purpose =>
      'Prévisualisez les changements sans accéder aux fichiers ni les renommer. Saisissez un nom par ligne non vide.';

  @override
  String get currentFilenames => 'Noms de fichiers actuels';

  @override
  String get filenamesHint => 'photo 1.jpg\nphoto 2.jpg';

  @override
  String get findText => 'Texte à rechercher';

  @override
  String get replaceWith => 'Remplacer par';

  @override
  String get prefix => 'Préfixe';

  @override
  String get suffix => 'Suffixe';

  @override
  String get stemOnly => 'Appliquer uniquement au nom sans extension';

  @override
  String get previewChanges => 'Prévisualiser';

  @override
  String get clearInput => 'Effacer la saisie';

  @override
  String get previewResults => 'Résultats de l’aperçu';

  @override
  String changedCount(int count) {
    return 'Modifiés : $count';
  }

  @override
  String unchangedCount(int count) {
    return 'Inchangés : $count';
  }

  @override
  String collisionsCount(int count) {
    return 'Doublons : $count';
  }

  @override
  String rowNumber(int row) {
    return 'Ligne $row';
  }

  @override
  String duplicateRows(String rows) {
    return 'Nom proposé en double aux lignes $rows';
  }

  @override
  String get errorNoFilenames => 'Saisissez au moins un nom de fichier.';

  @override
  String get errorTooManyCharacters =>
      'La saisie ne peut pas dépasser 50 000 caractères.';

  @override
  String get errorTooManyFilenames =>
      'Saisissez au maximum 500 noms de fichiers.';

  @override
  String get errorNoRule => 'Ajoutez au moins une règle de changement.';

  @override
  String get errorForbiddenCharacter =>
      'Les noms et règles ne peuvent pas contenir de caractères de contrôle, / ou \\.';

  @override
  String get errorEmptyProposedName =>
      'Une règle produit un nom de fichier vide.';

  @override
  String get errorProposedNameTooLong =>
      'Un nom proposé dépasse 255 caractères Unicode.';

  @override
  String get helpTooltip => 'Aide et guide';

  @override
  String get helpTitle => 'Guide de prévisualisation de renommage';

  @override
  String get helpProblemSolvedTitle => 'Problème résolu';

  @override
  String get helpProblemSolvedContent =>
      'Prévisualise le renommage en masse (préfixe, suffixe, remplacement) et signale les collisions de noms avant modification.';

  @override
  String get helpHowToUseTitle => 'Mode d\'emploi';

  @override
  String get helpHowToUseContent =>
      'Collez les noms d\'origine (un par ligne). Configurez préfixe, suffixe ou remplacement de texte pour voir le résultat en direct.';

  @override
  String get helpReadingResultsTitle => 'Lecture des résultats';

  @override
  String get helpReadingResultsContent =>
      'Affiche les noms avant/après côte à côte, compte les modifications et met en évidence les doublons en couleur d\'alerte.';

  @override
  String get helpExampleTitle => 'Exemple';

  @override
  String get helpExampleContent =>
      'Original :\nphoto_1.jpg\nphoto_2.jpg\nRègle : Préfixe \"2026_\" et remplacer \"_\" par \"-\"\nRésultat : 2026_photo-1.jpg, 2026_photo-2.jpg (0 collision).';

  @override
  String get helpLimitsTitle => 'Validations et limites';

  @override
  String get helpLimitsContent =>
      'Simulateur de texte uniquement. N\'accède pas au système de fichiers et ne renomme aucun fichier réel.';

  @override
  String get helpDataAndPrivacyTitle => 'Données locales et publicités';

  @override
  String get helpDataAndPrivacyContent =>
      'Les noms de fichiers sont traités uniquement en mémoire sans téléversement. Une bannière AdMob est affichée en bas.';
}
