import 'package:chain/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:chain/views/organisms/header.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const Header(),
      body: Center(
        child: Text(
          t.home.noKnowledge,
          style: const TextStyle(),
        ),
      ),
    );
  }
}
