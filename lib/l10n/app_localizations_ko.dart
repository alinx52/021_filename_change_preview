// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '파일명 변경 미리보기';

  @override
  String get appDescription => '파일에 접근하지 않고 파일명 변경 결과와 중복을 미리 확인하세요.';

  @override
  String get languageMenuTooltip => '언어 선택';

  @override
  String get privacyPolicy => '개인정보처리방침';

  @override
  String get appearanceTooltip => '화면 스타일 선택';

  @override
  String get appearanceMaterial => '머티리얼';

  @override
  String get appearanceFlat => '플랫';

  @override
  String get appearanceSoft => '소프트';

  @override
  String get purpose =>
      '파일에 접근하거나 이름을 바꾸지 않고 결과를 확인합니다. 빈 줄을 제외하고 한 줄에 파일명 하나를 입력하세요.';

  @override
  String get currentFilenames => '현재 파일명';

  @override
  String get filenamesHint => '사진 1.jpg\n사진 2.jpg';

  @override
  String get findText => '찾을 텍스트';

  @override
  String get replaceWith => '바꿀 텍스트';

  @override
  String get prefix => '접두사';

  @override
  String get suffix => '접미사';

  @override
  String get stemOnly => '파일명 본문에만 적용';

  @override
  String get previewChanges => '변경 미리보기';

  @override
  String get clearInput => '입력 지우기';

  @override
  String get previewResults => '미리보기 결과';

  @override
  String changedCount(int count) {
    return '변경: $count';
  }

  @override
  String unchangedCount(int count) {
    return '변경 없음: $count';
  }

  @override
  String collisionsCount(int count) {
    return '중복: $count';
  }

  @override
  String rowNumber(int row) {
    return '$row행';
  }

  @override
  String duplicateRows(String rows) {
    return '$rows행의 변경 파일명이 중복됩니다';
  }

  @override
  String get errorNoFilenames => '파일명을 하나 이상 입력하세요.';

  @override
  String get errorTooManyCharacters => '입력은 50,000자를 초과할 수 없습니다.';

  @override
  String get errorTooManyFilenames => '파일명은 500개 이하로 입력하세요.';

  @override
  String get errorNoRule => '변경 규칙을 하나 이상 추가하세요.';

  @override
  String get errorForbiddenCharacter => '파일명과 규칙에는 제어 문자, /, \\를 사용할 수 없습니다.';

  @override
  String get errorEmptyProposedName => '규칙 적용 후 파일명이 비어 있습니다.';

  @override
  String get errorProposedNameTooLong => '변경 파일명이 유니코드 문자 255자를 초과합니다.';
}
