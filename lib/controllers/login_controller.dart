import 'package:chain/global.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:chain/repositories/api_repository.dart';

final loginControllerProvider = Provider((ref) {
  return LoginController(ref: ref);
});

enum LoginResult {
  success,
  invalidUser,
}

class LoginController {
  LoginController({required this.ref});
  final ProviderRef ref;
  @visibleForTesting
  final api = ApiRepository();

  Future<LoginResult> login(String email, String password) async {
    try {
      final token = await api.login(email, password);
      ref.read(tokenProvider.notifier).state = token;
    } on UnauthorizedException catch (_) {
      return LoginResult.invalidUser;
    }

    return LoginResult.success;
  }
}
