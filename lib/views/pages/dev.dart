import 'package:chain/views/molecules/markdown_text.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:chain/views/organisms/header.dart';

@RoutePage()
class DevPage extends ConsumerWidget {
  const DevPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: Header(),
      backgroundColor: Color(0xFFE6E6E6),
      body: MarkdownText(),
    );
  }
}
