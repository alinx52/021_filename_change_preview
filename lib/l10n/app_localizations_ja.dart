// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'ファイル名変更プレビュー';

  @override
  String get appDescription => 'ファイルにアクセスせず、ファイル名の変更と重複を確認します。';

  @override
  String get languageMenuTooltip => '言語を選択';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get appearanceTooltip => '外観を選択';

  @override
  String get appearanceMaterial => 'マテリアル';

  @override
  String get appearanceFlat => 'フラット';

  @override
  String get appearanceSoft => 'ソフト';

  @override
  String get purpose =>
      'ファイルにアクセスしたり名前を変更したりせずに結果を確認します。空白行を除き、1行に1つのファイル名を入力してください。';

  @override
  String get currentFilenames => '現在のファイル名';

  @override
  String get filenamesHint => '写真 1.jpg\n写真 2.jpg';

  @override
  String get findText => '検索する文字列';

  @override
  String get replaceWith => '置換後の文字列';

  @override
  String get prefix => '接頭辞';

  @override
  String get suffix => '接尾辞';

  @override
  String get stemOnly => 'ファイル名の本体のみに適用';

  @override
  String get previewChanges => '変更をプレビュー';

  @override
  String get clearInput => '入力を消去';

  @override
  String get previewResults => 'プレビュー結果';

  @override
  String changedCount(int count) {
    return '変更: $count';
  }

  @override
  String unchangedCount(int count) {
    return '未変更: $count';
  }

  @override
  String collisionsCount(int count) {
    return '重複: $count';
  }

  @override
  String rowNumber(int row) {
    return '$row 行目';
  }

  @override
  String duplicateRows(String rows) {
    return '変更後の名前が $rows 行目で重複しています';
  }

  @override
  String get errorNoFilenames => 'ファイル名を1つ以上入力してください。';

  @override
  String get errorTooManyCharacters => '入力は50,000文字以内にしてください。';

  @override
  String get errorTooManyFilenames => 'ファイル名は500個以内にしてください。';

  @override
  String get errorNoRule => '変更ルールを1つ以上追加してください。';

  @override
  String get errorForbiddenCharacter => '名前とルールに制御文字、/、\\ は使用できません。';

  @override
  String get errorEmptyProposedName => 'ルール適用後のファイル名が空です。';

  @override
  String get errorProposedNameTooLong => '変更後のファイル名がUnicode 255文字を超えています。';

  @override
  String get helpTooltip => 'ヘルプと使い方';

  @override
  String get helpTitle => 'ファイル名変更プレビューガイド';

  @override
  String get helpProblemSolvedTitle => '解決する課題';

  @override
  String get helpProblemSolvedContent =>
      '実際のファイルを変更することなく、接頭辞、接尾辞、文字列置換、連番付与などのルール適用結果と重複の有無を安全に確認します。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '元のファイル名を1行に1つずつ入力します。追加する接頭辞、接尾辞、置換文字列などを指定すると即座に結果が反映されます。';

  @override
  String get helpReadingResultsTitle => '結果の見方';

  @override
  String get helpReadingResultsContent =>
      '変更前後のファイル名が並んで表示され、変更件数および重複名が発生している場合の警告バッジを確認できます。';

  @override
  String get helpExampleTitle => '具体例';

  @override
  String get helpExampleContent =>
      '元:\nphoto_1.jpg\nphoto_2.jpg\nルール: 接頭辞「2026_」追加、「_」を「-」に置換\n結果: 2026_photo-1.jpg, 2026_photo-2.jpg (重複 0件)。';

  @override
  String get helpLimitsTitle => '検証と制限事項';

  @override
  String get helpLimitsContent =>
      'テキストシミュレーション専用ツールです。端末のファイルストレージにアクセスせず、実際のファイル名を変更することはありません。';

  @override
  String get helpDataAndPrivacyTitle => 'ローカルデータと広告';

  @override
  String get helpDataAndPrivacyContent =>
      '入力されたファイル名はメモリ内でのみ処理され、外部への送信は行われません。画面下部に標準AdMobバナーが表示されます。';
}
