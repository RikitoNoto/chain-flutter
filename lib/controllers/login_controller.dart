import 'package:chain_flutter/values/token.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:chain_flutter/entities/user.dart';
import 'package:chain_flutter/repositories/api_repository.dart';


final loginControllerProvider = Provider((ref) {
  return LoginController(ref: ref);
});

enum LoginResult{
  success,
  invalidUser,
}

class LoginController{
  LoginController({required this.ref});
  final ProviderRef ref;
  @visibleForTesting final api = ApiRepository();

  Future<LoginResult> login(String email, String password) async {
    try{
      Token token = await api.login(email, password);
    }
    on UnauthorizedException catch(e){
      return LoginResult.invalidUser;
    }

    return LoginResult.success;
  }
}
