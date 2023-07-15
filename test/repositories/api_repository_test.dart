import 'dart:convert';

import 'package:chain_flutter/values/token.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

import 'package:chain_flutter/repositories/api_repository.dart';

typedef PostFunc = Future<Response> Function(
  Uri url, {
  Map<String, String>? headers,
  Object? body,
  Encoding? encoding,
});

typedef GetFunc = Future<Response> Function(Uri url, {Map<String, String>? headers});

void main() {
  setUpAll((){
  });

  setUp(() async{
  });

  tearDown(() async{
  });

  loginTest();
}

PostFunc createPostMock({
  String bodyData = "{}",
  int status = 200,
}){
  postMock(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }){
    return Future.value(Response(bodyData, status));
  }
  return postMock;
}

GetFunc createGetMock({
  String bodyData = "{}",
  int status = 200,
}){
  getMock(Uri url, {Map<String, String>? headers}){
    return Future.value(Response(bodyData, status));
  }
  return getMock;
}

void loginTest(){
  group('login test', () {
    test('should return tokens after success to call a login method', () async {
      PostFunc postMock = createPostMock(status: 200, bodyData: '{"access": "1", "refresh": "2"}');
      final api = ApiRepositoryHttp(get: createGetMock(), post: postMock);
      Token token = await api.login("email", "password");
      expect(token.access, "1");
      expect(token.refresh, "2");
    });

    test('should throw exception after return 401 error', () async {
      PostFunc postMock = createPostMock(status: 401, bodyData: '{"detail":"No active account found with the given credentials"}');
      final api = ApiRepositoryHttp(get: createGetMock(), post: postMock);
      expect(() async {await api.login("email", "password");}, throwsA(const TypeMatcher<UnauthorizedException>()));
    });
  });
}
