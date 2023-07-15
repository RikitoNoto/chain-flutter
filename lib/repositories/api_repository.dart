import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:chain/values/token.dart';

abstract class ApiRepository {
  factory ApiRepository(){
    return ApiRepositoryHttp(get: http.get, post: http.post);
  }
  Future<Token> login(String email, String password);
}


class ApiRepositoryHttp implements ApiRepository {
  ApiRepositoryHttp({required this.get, required this.post,});

  final Future<http.Response> Function(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) post;

  final Future<http.Response> Function(Uri url, {Map<String, String>? headers}) get;

  @override
  Future<Token> login(String email, String password) async{
    final response = await post(Uri.parse("http://127.0.0.1:8001/v1/token/"), body: {
      "email": email,
      "password": password,
    });
    final body = jsonDecode(response.body);

    // エラーコードを確認
    switch(response.statusCode){
      case 401:
        throw UnauthorizedException("wrong email or password.\n\temail: $email\n\tpassword: $password");
    }

    return Token(access: body["access"], refresh: body["refresh"]);
  }
}

class UnauthorizedException implements Exception{
  final String message;
  UnauthorizedException(this.message,);

  @override
  String toString() => message;
}
