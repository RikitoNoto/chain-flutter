import 'package:chain/global.dart';
import 'package:chain/repositories/user_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:chain/repositories/api_repository.dart';

final fetchProfileProvider = FutureProvider.autoDispose((ref) =>
    UserRepository(ApiRepository(token: ref.watch(tokenProvider))).fetchSelf());

final profileControllerProvider = Provider.autoDispose((ref) {
  return ProfileController(ref: ref);
});

class ProfileController {
  ProfileController({required this.ref});
  final ProviderRef ref;

  @visibleForTesting
  final api = ApiRepository();
}
