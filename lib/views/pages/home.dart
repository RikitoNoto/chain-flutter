import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:chain/views/organisms/header.dart';


@RoutePage()
class HomePage extends ConsumerWidget  {
  HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: Header(),
      backgroundColor: const Color(0xFFFFFAF0),

      body: Center(),
      );
  }

}
