import 'dart:convert';
import 'dart:io';

import 'package:filename_change_preview/app.dart';
import 'package:filename_change_preview/filename_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('filename transformation', () {
    test('applies replacement then prefix and suffix to stems', () {
      final preview = buildFilenamePreview(
        input: 'photo 1.jpg\nphoto 2.jpg\nphoto 3.jpg',
        find: 'photo',
        replace: 'trip',
        prefix: '',
        suffix: '_web',
        stemOnly: true,
      );

      expect(preview.changes.map((change) => change.proposed), [
        'trip 1_web.jpg',
        'trip 2_web.jpg',
        'trip 3_web.jpg',
      ]);
      expect(preview.changedCount, 3);
      expect(preview.unchangedCount, 0);
      expect(preview.collisionCount, 0);
    });

    test('reports exact case-sensitive duplicate groups and their rows', () {
      final preview = buildFilenamePreview(
        input: 'a.txt\nb.txt',
        find: 'a',
        replace: 'b',
        prefix: '',
        suffix: '',
        stemOnly: false,
      );

      expect(preview.changes.map((change) => change.proposed), [
        'b.txt',
        'b.txt',
      ]);
      expect(preview.collisionCount, 1);
      expect(preview.changes.first.collisionRows, [1, 2]);
      expect(preview.changes.last.collisionRows, [1, 2]);
    });

    test('uses a final dot only when it is neither first nor last', () {
      final preview = buildFilenamePreview(
        input: '.hidden\ntrailing.\narchive.tar.GZ',
        find: 'i',
        replace: 'I',
        prefix: 'new_',
        suffix: '_done',
        stemOnly: true,
      );

      expect(preview.changes.map((change) => change.proposed), [
        'new_.hIdden_done',
        'new_traIlIng._done',
        'new_archIve.tar_done.GZ',
      ]);
    });

    test('allows blank find text when a prefix is present', () {
      final preview = buildFilenamePreview(
        input: 'report.pdf',
        find: '',
        replace: 'ignored',
        prefix: 'final_',
        suffix: '',
        stemOnly: true,
      );
      expect(preview.changes.single.proposed, 'final_report.pdf');
    });

    test(
      'validates missing rules, forbidden characters, empty and long results',
      () {
        expect(
          () => buildFilenamePreview(
            input: 'a.txt',
            find: '',
            replace: '',
            prefix: '',
            suffix: '',
            stemOnly: true,
          ),
          throwsPreviewError(PreviewError.noRule),
        );
        expect(
          () => buildFilenamePreview(
            input: 'a/b.txt',
            find: '',
            replace: '',
            prefix: 'x',
            suffix: '',
            stemOnly: true,
          ),
          throwsPreviewError(PreviewError.forbiddenCharacter),
        );
        expect(
          () => buildFilenamePreview(
            input: 'a',
            find: 'a',
            replace: '',
            prefix: '',
            suffix: '',
            stemOnly: false,
          ),
          throwsPreviewError(PreviewError.emptyProposedName),
        );
        expect(
          () => buildFilenamePreview(
            input: 'a',
            find: '',
            replace: '',
            prefix: 'x' * 255,
            suffix: '',
            stemOnly: false,
          ),
          throwsPreviewError(PreviewError.proposedNameTooLong),
        );
      },
    );

    test('validates filename and character limits', () {
      expect(
        () => buildFilenamePreview(
          input: List.filled(501, 'a.txt').join('\n'),
          find: '',
          replace: '',
          prefix: 'x',
          suffix: '',
          stemOnly: true,
        ),
        throwsPreviewError(PreviewError.tooManyFilenames),
      );
      expect(
        () => buildFilenamePreview(
          input: 'a' * 50001,
          find: '',
          replace: '',
          prefix: 'x',
          suffix: '',
          stemOnly: true,
        ),
        throwsPreviewError(PreviewError.tooManyCharacters),
      );
    });
  });

  test('every required ARB has exactly the English message keys', () {
    const locales = [
      'en',
      'ko',
      'ja',
      'zh_Hans',
      'zh_Hant',
      'es',
      'fr',
      'de',
      'pt_BR',
      'it',
      'nl',
      'ru',
      'ar',
      'hi',
      'id',
      'vi',
    ];
    Set<String> messageKeys(String locale) {
      final json = jsonDecode(
        File('lib/l10n/app_$locale.arb').readAsStringSync(),
      ) as Map<String, dynamic>;
      return json.keys.where((key) => !key.startsWith('@')).toSet();
    }

    final englishKeys = messageKeys('en');
    for (final locale in locales) {
      expect(
        messageKeys(locale),
        englishKeys,
        reason: 'Incomplete ARB: $locale',
      );
    }
  });

  testWidgets(
    'previews the three-photo scenario and preserves it after an error',
    (tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.enterText(
        find.byKey(const ValueKey('filenames-input')),
        'photo 1.jpg\nphoto 2.jpg\nphoto 3.jpg',
      );
      await tester.enterText(find.byKey(const ValueKey('find-input')), 'photo');
      await tester.enterText(
        find.byKey(const ValueKey('replace-input')),
        'trip',
      );
      await tester.enterText(
        find.byKey(const ValueKey('suffix-input')),
        '_web',
      );
      await tester.tap(find.byKey(const ValueKey('preview-button')));
      await tester.pump();

      expect(find.text('trip 1_web.jpg'), findsOneWidget);
      expect(find.text('trip 2_web.jpg'), findsOneWidget);
      expect(find.text('trip 3_web.jpg'), findsOneWidget);
      expect(find.text('Changed: 3'), findsOneWidget);
      expect(find.text('Collisions: 0'), findsOneWidget);

      await tester.enterText(find.byKey(const ValueKey('filenames-input')), '');
      await tester.tap(find.byKey(const ValueKey('preview-button')));
      await tester.pump();
      expect(find.text('Enter at least one filename.'), findsOneWidget);
      expect(find.text('trip 1_web.jpg'), findsOneWidget);
    },
  );

  testWidgets('shows collision rows for the whole-name scenario', (
    tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.enterText(
      find.byKey(const ValueKey('filenames-input')),
      'a.txt\nb.txt',
    );
    await tester.enterText(find.byKey(const ValueKey('find-input')), 'a');
    await tester.enterText(find.byKey(const ValueKey('replace-input')), 'b');
    await tester.tap(find.byKey(const ValueKey('stem-only-switch')));
    await tester.tap(find.byKey(const ValueKey('preview-button')));
    await tester.pump();

    expect(find.text('b.txt'), findsNWidgets(3));
    expect(find.text('Collisions: 1'), findsOneWidget);
    expect(find.text('Duplicate proposed name on rows 1, 2'), findsNWidgets(2));
  });

  testWidgets('all invalid input categories preserve the last valid preview', (
    tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await setInputs(tester, input: 'a', prefix: 'x_');
    await tester.tap(find.byKey(const ValueKey('preview-button')));
    await tester.pump();
    expect(find.text('x_a'), findsOneWidget);

    await setInputs(tester, input: 'a');
    await expectValidation(tester, 'Add at least one change rule.');

    await setInputs(tester, input: 'a/b', prefix: 'x_');
    await expectValidation(
      tester,
      r'Names and rules cannot contain control characters, /, or \.',
    );

    await setInputs(tester, input: 'a', find: 'a');
    await tester.tap(find.byKey(const ValueKey('stem-only-switch')));
    await expectValidation(tester, 'A rule produces an empty filename.');

    await setInputs(tester, input: 'a', prefix: 'x' * 255);
    await expectValidation(
      tester,
      'A proposed filename exceeds 255 Unicode characters.',
    );

    await setInputs(
      tester,
      input: List.filled(501, 'a.txt').join('\n'),
      prefix: 'x_',
    );
    await expectValidation(tester, 'Enter no more than 500 filenames.');

    await setInputs(tester, input: 'a' * 50001, prefix: 'x_');
    await expectValidation(tester, 'Input cannot exceed 50,000 characters.');
    expect(find.text('x_a'), findsOneWidget);
  });

  testWidgets(
    'English, Korean, and Arabic switch immediately with RTL preservation',
    (tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('Current filenames'), findsOneWidget);
      await tester.enterText(
        find.byKey(const ValueKey('filenames-input')),
        'photo.jpg',
      );
      await tester.enterText(
        find.byKey(const ValueKey('prefix-input')),
        'new_',
      );
      await tester.tap(find.byKey(const ValueKey('preview-button')));
      await tester.pump();
      expect(find.text('new_photo.jpg'), findsOneWidget);

      await chooseLanguage(tester, '한국어 (Korean)');
      expect(
        tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
        const Locale('ko'),
      );
      expect(find.text('현재 파일명'), findsOneWidget);

      await chooseLanguage(tester, 'العربية');
      expect(
        tester.widget<MaterialApp>(find.byType(MaterialApp)).locale,
        const Locale('ar'),
      );
      expect(find.text('أسماء الملفات الحالية'), findsOneWidget);
      expect(
        Directionality.of(tester.element(find.byType(Scaffold))),
        TextDirection.rtl,
      );
      expect(find.text('photo.jpg'), findsNWidgets(2));
      expect(find.text('new_photo.jpg'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );
}

Matcher throwsPreviewError(PreviewError error) {
  return throwsA(
    isA<PreviewValidationException>().having(
      (exception) => exception.error,
      'error',
      error,
    ),
  );
}

Future<void> chooseLanguage(WidgetTester tester, String nativeName) async {
  await tester.tap(find.byKey(const ValueKey('language')));
  await tester.pumpAndSettle();
  final choice = find.text(nativeName).last;
  await tester.ensureVisible(choice);
  await tester.pumpAndSettle();
  await tester.tap(choice);
  await tester.pumpAndSettle();
}

Future<void> setInputs(
  WidgetTester tester, {
  required String input,
  String find = '',
  String replace = '',
  String prefix = '',
  String suffix = '',
}) async {
  await tester.enterText(findByKey('filenames-input'), input);
  await tester.enterText(findByKey('find-input'), find);
  await tester.enterText(findByKey('replace-input'), replace);
  await tester.enterText(findByKey('prefix-input'), prefix);
  await tester.enterText(findByKey('suffix-input'), suffix);
}

Finder findByKey(String key) => find.byKey(ValueKey(key));

Future<void> expectValidation(WidgetTester tester, String message) async {
  await tester.tap(find.byKey(const ValueKey('preview-button')));
  await tester.pump();
  expect(find.text(message), findsOneWidget);
  expect(find.text('x_a'), findsOneWidget);
}
