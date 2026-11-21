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
}
