import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:chain/values/token.dart';

abstract class ApiRepository {
  factory ApiRepository() {
    return ApiRepositoryHttp(get: http.get, post: http.post);
  }
  Future<Token> login(String email, String password);
  Future<Map<String, dynamic>> get(String path, {Map<String, String>? headers});
}

class ApiRepositoryHttp implements ApiRepository {
  ApiRepositoryHttp({
    required get,
    required post,
  })  : _getFunc = get,
        _postFunc = post;

  final Future<http.Response> Function(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) _postFunc;

  final Future<http.Response> Function(Uri url, {Map<String, String>? headers})
      _getFunc;

  @override
  Future<Token> login(String email, String password) async {
    final response =
        await _postFunc(Uri.parse("http://10.0.2.2:8000/v1/token/"), body: {
      "email": email,
      "password": password,
    });
    final body = jsonDecode(response.body);

    // エラーコードを確認
    switch (response.statusCode) {
      case 401:
        throw UnauthorizedException(
            "wrong email or password.\n\temail: $email\n\tpassword: $password");
    }

    return Token(access: body["access"], refresh: body["refresh"]);
  }

  @override
  Future<Map<String, dynamic>> get(String path,
      {Map<String, String>? headers}) async {
    final response = await _getFunc(Uri.parse("http://10.0.2.2:8000/v1/$path"),
        headers: headers);
    final body = jsonDecode(response.body);
    return body;
  }
}

class UnauthorizedException implements Exception {
  final String message;
  UnauthorizedException(
    this.message,
  );

  @override
  String toString() => message;
}
