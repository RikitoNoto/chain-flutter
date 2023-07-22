import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:chain/views/organisms/header.dart';
import 'package:chain/views/organisms/bottom_navigation_bar.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: Header(),
      backgroundColor: Color(0xFFE6E6E6),
      bottomNavigationBar: ChainNavigationBar(),
      body: Center(
        child: Text(
          "ユーザーやタグをフォローして、\n知識を表示しましょう",
          style: TextStyle(
            color: Color(0xFF909090),
          ),
        ),
      ),
    );
  }
}
