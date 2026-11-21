import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ad_banner.dart';
import 'app_config.dart';
import 'app_language_menu.dart';
import 'design_system.dart';
import 'filename_preview.dart';
import 'l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.locale,
    required this.onLocaleChanged,
    required this.designStyle,
    required this.onDesignStyleChanged,
  });

  final Locale locale;
  final ValueChanged<Locale> onLocaleChanged;
  final String designStyle;
  final ValueChanged<String> onDesignStyleChanged;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _filenamesController = TextEditingController();
  final _findController = TextEditingController();
  final _replaceController = TextEditingController();
  final _prefixController = TextEditingController();
  final _suffixController = TextEditingController();
  bool _stemOnly = true;
  FilenamePreview? _preview;
  PreviewError? _error;

  @override
  void dispose() {
    _filenamesController.dispose();
    _findController.dispose();
    _replaceController.dispose();
    _prefixController.dispose();
    _suffixController.dispose();
    super.dispose();
  }

  void _previewChanges() {
    try {
      final preview = buildFilenamePreview(
        input: _filenamesController.text,
        find: _findController.text,
        replace: _replaceController.text,
        prefix: _prefixController.text,
        suffix: _suffixController.text,
        stemOnly: _stemOnly,
      );
      setState(() {
        _preview = preview;
        _error = null;
      });
    } on PreviewValidationException catch (exception) {
      setState(() => _error = exception.error);
    }
  }

  void _clear() {
    _filenamesController.clear();
    _findController.clear();
    _replaceController.clear();
    _prefixController.clear();
    _suffixController.clear();
    setState(() {
      _stemOnly = true;
      _preview = null;
      _error = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle, overflow: TextOverflow.ellipsis),
        actions: [
          AppLanguageMenu(
            locale: widget.locale,
            onSelected: widget.onLocaleChanged,
            tooltip: l10n.languageMenuTooltip,
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SafeArea(
            top: false,
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppAppearanceMenu(
                    selectedStyle: widget.designStyle,
                    onSelected: widget.onDesignStyleChanged,
                    tooltip: l10n.appearanceTooltip,
                    materialLabel: l10n.appearanceMaterial,
                    flatLabel: l10n.appearanceFlat,
                    softLabel: l10n.appearanceSoft,
                  ),
                  const SizedBox(width: 4),
                  Flexible(
                    child: TextButton.icon(
                      onPressed: () {
                        unawaited(
                          launchUrl(
                            Uri.parse(privacyPolicyUrl),
                            mode: LaunchMode.externalApplication,
                          ),
                        );
                      },
                      icon: const Icon(Icons.privacy_tip_outlined, size: 19),
                      label: Text(
                        l10n.privacyPolicy,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Center(child: AdBanner()),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          children: [
            Text(
              l10n.purpose,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              key: const ValueKey('filenames-input'),
              controller: _filenamesController,
              minLines: 3,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: l10n.currentFilenames,
                hintText: l10n.filenamesHint,
                alignLabelWithHint: true,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _RuleField(
                    fieldKey: const ValueKey('find-input'),
                    controller: _findController,
                    label: l10n.findText,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _RuleField(
                    fieldKey: const ValueKey('replace-input'),
                    controller: _replaceController,
                    label: l10n.replaceWith,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _RuleField(
                    fieldKey: const ValueKey('prefix-input'),
                    controller: _prefixController,
                    label: l10n.prefix,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _RuleField(
                    fieldKey: const ValueKey('suffix-input'),
                    controller: _suffixController,
                    label: l10n.suffix,
                  ),
                ),
              ],
            ),
            SwitchListTile(
              key: const ValueKey('stem-only-switch'),
              contentPadding: EdgeInsets.zero,
              title: Text(l10n.stemOnly),
              value: _stemOnly,
              onChanged: (value) => setState(() => _stemOnly = value),
            ),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    key: const ValueKey('preview-button'),
                    onPressed: _previewChanges,
                    icon: const Icon(Icons.preview_outlined),
                    label: Text(l10n.previewChanges),
                  ),
                ),
                const SizedBox(width: 8),
                TextButton.icon(
                  key: const ValueKey('clear-button'),
                  onPressed: _clear,
                  icon: const Icon(Icons.clear),
                  label: Text(l10n.clearInput),
                ),
              ],
            ),
            if (_error case final error?) ...[
              const SizedBox(height: 8),
              Text(
                _errorMessage(l10n, error),
                key: const ValueKey('validation-error'),
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ],
            if (_preview case final preview?) ...[
              const SizedBox(height: 16),
              _PreviewResults(preview: preview),
            ],
          ],
        ),
      ),
    );
  }
}

class _RuleField extends StatelessWidget {
  const _RuleField({
    required this.fieldKey,
    required this.controller,
    required this.label,
  });

  final Key fieldKey;
  final TextEditingController controller;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: fieldKey,
      controller: controller,
      decoration: InputDecoration(labelText: label),
    );
  }
}

class _PreviewResults extends StatelessWidget {
  const _PreviewResults({required this.preview});

  final FilenamePreview preview;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          l10n.previewResults,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            _CountChip(label: l10n.changedCount(preview.changedCount)),
            _CountChip(label: l10n.unchangedCount(preview.unchangedCount)),
            _CountChip(
              label: l10n.collisionsCount(preview.collisionCount),
              warning: preview.collisionCount > 0,
            ),
          ],
        ),
        const SizedBox(height: 8),
        Card(
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: preview.changes.length,
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final change = preview.changes[index];
              return Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.rowNumber(change.row),
                      style: Theme.of(context).textTheme.labelMedium
                          ?.copyWith(color: colors.onSurfaceVariant),
                    ),
                    const SizedBox(height: 4),
                    Text(change.original),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          size: 18,
                          color: colors.primary,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            change.proposed,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    if (change.hasCollision) ...[
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.warning_amber_rounded,
                            size: 18,
                            color: colors.error,
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              l10n.duplicateRows(
                                change.collisionRows.join(', '),
                              ),
                              style: TextStyle(color: colors.error),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CountChip extends StatelessWidget {
  const _CountChip({required this.label, this.warning = false});

  final String label;
  final bool warning;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
        color: warning ? colors.errorContainer : colors.secondaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(label),
    );
  }
}

String _errorMessage(AppLocalizations l10n, PreviewError error) {
  return switch (error) {
    PreviewError.noFilenames => l10n.errorNoFilenames,
    PreviewError.tooManyCharacters => l10n.errorTooManyCharacters,
    PreviewError.tooManyFilenames => l10n.errorTooManyFilenames,
    PreviewError.noRule => l10n.errorNoRule,
    PreviewError.forbiddenCharacter => l10n.errorForbiddenCharacter,
    PreviewError.emptyProposedName => l10n.errorEmptyProposedName,
    PreviewError.proposedNameTooLong => l10n.errorProposedNameTooLong,
  };
}
