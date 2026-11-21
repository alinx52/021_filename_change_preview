class FilenameChange {
  const FilenameChange({
    required this.row,
    required this.original,
    required this.proposed,
    required this.collisionRows,
  });

  final int row;
  final String original;
  final String proposed;
  final List<int> collisionRows;

  bool get changed => original != proposed;
  bool get hasCollision => collisionRows.length > 1;
}

class FilenamePreview {
  const FilenamePreview({required this.changes, required this.collisionCount});

  final List<FilenameChange> changes;
  final int collisionCount;

  int get changedCount => changes.where((change) => change.changed).length;
  int get unchangedCount => changes.length - changedCount;
}

enum PreviewError {
  noFilenames,
  tooManyCharacters,
  tooManyFilenames,
  noRule,
  forbiddenCharacter,
  emptyProposedName,
  proposedNameTooLong,
}

class PreviewValidationException implements Exception {
  const PreviewValidationException(this.error);

  final PreviewError error;
}

FilenamePreview buildFilenamePreview({
  required String input,
  required String find,
  required String replace,
  required String prefix,
  required String suffix,
  required bool stemOnly,
}) {
  if (input.runes.length > 50000) {
    throw const PreviewValidationException(PreviewError.tooManyCharacters);
  }

  final normalizedInput = input.replaceAll('\r\n', '\n');
  if (normalizedInput.runes.any(
    (codePoint) => codePoint != 0x0A && _isControlCharacter(codePoint),
  )) {
    throw const PreviewValidationException(PreviewError.forbiddenCharacter);
  }
  final names = normalizedInput
      .split('\n')
      .map((line) => line.trim())
      .where((line) => line.isNotEmpty)
      .toList(growable: false);
  if (names.isEmpty) {
    throw const PreviewValidationException(PreviewError.noFilenames);
  }
  if (names.length > 500) {
    throw const PreviewValidationException(PreviewError.tooManyFilenames);
  }
  if ((find.isEmpty || find == replace) && prefix.isEmpty && suffix.isEmpty) {
    throw const PreviewValidationException(PreviewError.noRule);
  }
  if ([...names, find, replace, prefix, suffix].any(_hasForbiddenCharacter)) {
    throw const PreviewValidationException(PreviewError.forbiddenCharacter);
  }

  final proposedNames = <String>[];
  for (final name in names) {
    final parts = stemOnly ? _splitFinalExtension(name) : (name, '');
    var transformed = parts.$1;
    if (find.isNotEmpty) transformed = transformed.replaceAll(find, replace);
    transformed = '$prefix$transformed$suffix';
    final proposed = '$transformed${parts.$2}';
    if (proposed.isEmpty) {
      throw const PreviewValidationException(PreviewError.emptyProposedName);
    }
    if (_hasForbiddenCharacter(proposed)) {
      throw const PreviewValidationException(PreviewError.forbiddenCharacter);
    }
    if (proposed.runes.length > 255) {
      throw const PreviewValidationException(PreviewError.proposedNameTooLong);
    }
    proposedNames.add(proposed);
  }

  final rowsByName = <String, List<int>>{};
  for (var index = 0; index < proposedNames.length; index++) {
    rowsByName.putIfAbsent(proposedNames[index], () => <int>[]).add(index + 1);
  }
  final changes = <FilenameChange>[
    for (var index = 0; index < names.length; index++)
      FilenameChange(
        row: index + 1,
        original: names[index],
        proposed: proposedNames[index],
        collisionRows: List.unmodifiable(rowsByName[proposedNames[index]]!),
      ),
  ];
  final collisionCount = rowsByName.values
      .where((rows) => rows.length > 1)
      .length;
  return FilenamePreview(
    changes: List.unmodifiable(changes),
    collisionCount: collisionCount,
  );
}

(String, String) _splitFinalExtension(String name) {
  final separator = name.lastIndexOf('.');
  if (separator <= 0 || separator == name.length - 1) return (name, '');
  return (name.substring(0, separator), name.substring(separator));
}

bool _hasForbiddenCharacter(String value) {
  for (final codePoint in value.runes) {
    if (codePoint == 0x2F ||
        codePoint == 0x5C ||
        _isControlCharacter(codePoint)) {
      return true;
    }
  }
  return false;
}

bool _isControlCharacter(int codePoint) =>
    codePoint <= 0x1F || (codePoint >= 0x7F && codePoint <= 0x9F);
