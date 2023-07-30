import 'dart:convert';

import 'package:chain/values/token.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

import 'package:chain/repositories/api_repository.dart';
import 'package:mockito/mockito.dart';

import '../controllers/login_controller_test.mocks.dart';

typedef PostFunc = Future<Response> Function(
  Uri url, {
  Map<String, String>? headers,
  Object? body,
  Encoding? encoding,
});

typedef GetFunc = Future<Response> Function(Uri url,
    {Map<String, String>? headers});

Map<String, String>? kHeaders;

void main() {
  setUpAll(() {});

  setUp(() async {
    kHeaders = null;
  });

  tearDown(() async {});

  loginTest();
  getTest();
}

PostFunc createPostMock({
  String bodyData = "{}",
  int status = 200,
}) {
  postMock(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) {
    return Future.value(Response(bodyData, status));
  }

  return postMock;
}

GetFunc createGetMock({
  String bodyData = "{}",
  int status = 200,
}) {
  getMock(Uri url, {Map<String, String>? headers}) {
    kHeaders = headers;
    return Future.value(Response(bodyData, status));
  }

  return getMock;
}

void loginTest() {
  group('login test', () {
    test('should return tokens after success to call a login method', () async {
      PostFunc postMock = createPostMock(
          status: 200, bodyData: '{"access": "1", "refresh": "2"}');
      final api = ApiRepositoryHttp(get: createGetMock(), post: postMock);
      Token token = await api.login("email", "password");
      expect(token.access, "1");
      expect(token.refresh, "2");
    });

    test('should throw exception after return 401 error', () async {
      PostFunc postMock = createPostMock(
          status: 401,
          bodyData:
              '{"detail":"No active account found with the given credentials"}');
      final api = ApiRepositoryHttp(get: createGetMock(), post: postMock);
      expect(() async {
        await api.login("email", "password");
      }, throwsA(const TypeMatcher<UnauthorizedException>()));
    });
  });
}

void getTest() {
  group('get test', () {
    test('should return data as map', () async {
      GetFunc getMock = createGetMock(bodyData: '{"key": "value"}');
      final api = ApiRepositoryHttp(get: getMock, post: createPostMock());
      Map<String, dynamic> response = await api.get("1");
      expect(response["key"], "value");
    });

    test('should call get with token', () async {
      PostFunc postMock = createPostMock(
          status: 200, bodyData: '{"access": "1", "refresh": "2"}');
      GetFunc getMock = createGetMock(bodyData: '{"key": "value"}');
      final token = MockToken();
      when(token.access).thenReturn("test_token");
      final api = ApiRepositoryHttp(token: token, get: getMock, post: postMock);

      Map<String, dynamic> response = await api.get("1"); // ログイン状態でAPI呼び出し
      expect(response["key"], "value");
      expect(kHeaders, {"Authorization": "JWT test_token"});
    });
  });
}
