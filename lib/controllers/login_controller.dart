import 'package:chain_flutter/values/token.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:chain_flutter/entities/user.dart';
import 'package:chain_flutter/repositories/api_repository.dart';


final loginControllerProvider = Provider((ref) {
  return LoginController(ref: ref);
});

class LoginController{
  LoginController({required this.ref});
  final ProviderRef ref;

  Future login(String email, String password) async {
    final api = ApiRepository();
    Token token = await api.login(email, password);
    print(token);
    // return ;
  }
}
