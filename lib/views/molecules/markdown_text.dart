import 'package:chain/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class MarkdownText extends StatelessWidget {
  const MarkdownText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
        selectable: true,
        builders: {
          "pre": _PreBuilder(),
        },
        onTapLink: (text, href, title) async {
          if (href != null &&
              (!await launchUrl(
                Uri.parse(href),
                mode: LaunchMode.externalApplication,
              ))) {}
        },
        data: "# markdownSource\n"
            "hello.\n"
            "## text2\n"
            "### text3\n"
            "**strong**\n"
            "```dart\n"
            "print('this is code');\n"
            "```\n"
            "[link](https://google.com)\n");
  }
}

/// Pre
class _PreBuilder extends MarkdownElementBuilder {
  @override
  Widget visitText(md.Text text, TextStyle? preferredStyle) {
    return _Pre(text: text.text);
  }
}

class _Pre extends StatelessWidget {
  final String text;

  const _Pre({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onBackground,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 4),
                child: SelectableText(
                  text,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.background),
                ),
              ),
            ),
            IconButton(
              onPressed: () => Clipboard.setData(ClipboardData(text: text)),
              tooltip: t.markdown.copy,
              icon: Icon(
                Icons.content_copy_outlined,
                size: 20,
                color: Theme.of(context).colorScheme.background,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
