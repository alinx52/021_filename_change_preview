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

  @override
  String get helpTooltip => '도움말 및 안내';

  @override
  String get helpTitle => '파일명 변경 미리보기 안내';

  @override
  String get helpProblemSolvedTitle => '해결하는 문제';

  @override
  String get helpProblemSolvedContent =>
      '실제 디스크 파일을 수정하기 전에 여러 파일명에 접두사, 접미사, 찾기/바꾸기, 번호 매기기 규칙을 적용한 결과와 중복 발생 여부를 오프라인으로 미리 검증합니다.';

  @override
  String get helpHowToUseTitle => '사용 방법';

  @override
  String get helpHowToUseContent =>
      '원본 파일명들을 한 줄에 하나씩 입력하세요. 추가할 접두사, 접미사, 찾을 문자열 및 바꿀 문자열을 설정하면 즉시 결과가 미리 표시됩니다.';

  @override
  String get helpReadingResultsTitle => '결과 확인';

  @override
  String get helpReadingResultsContent =>
      '변경 전후의 파일명을 1:1로 비교해 보여주며, 변경된 파일 개수와 함께 결과에 중복된 이름이 발생할 경우 경고 표시를 제공합니다.';

  @override
  String get helpExampleTitle => '대표 예시';

  @override
  String get helpExampleContent =>
      '원본:\nphoto_1.jpg\nphoto_2.jpg\n규칙: 접두사 \"2026_\" 추가 및 \"_\"를 \"-\"로 치환\n결과: 2026_photo-1.jpg, 2026_photo-2.jpg (중복 0건).';

  @override
  String get helpLimitsTitle => '검증 및 제한사항';

  @override
  String get helpLimitsContent =>
      '텍스트 시뮬레이션 전용 도구입니다. 기기 파일 시스템에 접근하지 않으며 실제 저장소의 파일 이름을 직접 변경하지 않습니다.';

  @override
  String get helpDataAndPrivacyTitle => '로컬 데이터 및 광고';

  @override
  String get helpDataAndPrivacyContent =>
      '입력한 파일명은 메모리 내에서만 처리되며 외부로 전송되거나 저장되지 않습니다. 화면 하단에 Google AdMob 표준 배너 광고가 표시됩니다.';
}
