import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:chain_flutter/entities/user.dart';


final loginControllerProvider = Provider((ref) {
  return LoginController(ref: ref);
});

class LoginController{
  LoginController({required this.ref});
  final ProviderRef ref;

  Future login(String email, String password) async{

  }
}
