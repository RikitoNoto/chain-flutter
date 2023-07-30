import 'package:chain/controllers/login_controller.dart';
import 'package:chain/global.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:chain/repositories/api_repository.dart';
import 'package:chain/values/token.dart';
import 'login_controller_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ApiRepository>()])
@GenerateNiceMocks([MockSpec<ProviderRef>()])
@GenerateNiceMocks([MockSpec<Token>()])
void main() {
  setUpAll(() {});

  setUp(() async {});

  tearDown(() async {});

  loginTest();
}

class LoginControllerSpy extends LoginController {
  LoginControllerSpy({required ref, required ApiRepository api})
      : _api = api,
        super(ref: ref);
  final ApiRepository _api;
  @override
  ApiRepository get api => _api;
}

final loginControllerSpyProvider = Provider.family((ref, ApiRepository api) {
  return LoginControllerSpy(ref: ref, api: api);
});

void loginTest() {
  group('login test', () {
    test('should return success when login controller return token', () async {
      MockApiRepository apiMock = MockApiRepository();
      final container = ProviderContainer();
      final controller = container.read(loginControllerSpyProvider(apiMock));
      when(apiMock.login(any, any))
          .thenAnswer((_) => Future.value(MockToken()));
      final LoginResult result = await controller.login("email", "password");
      expect(result, LoginResult.success);
    });

    test('should return invalidUser when occur UnauthorizedException',
        () async {
      MockApiRepository apiMock = MockApiRepository();
      final loginController =
          LoginControllerSpy(api: apiMock, ref: MockProviderRef());
      when(apiMock.login(any, any))
          .thenAnswer((_) => throw UnauthorizedException("message"));
      final LoginResult result =
          await loginController.login("email", "password");
      expect(result, LoginResult.invalidUser);
    });

    test('should set token when success login', () async {
      MockApiRepository apiMock = MockApiRepository();
      final container = ProviderContainer();
      final controller = container.read(loginControllerSpyProvider(apiMock));
      final mockToken = MockToken();
      when(apiMock.login(any, any)).thenAnswer((_) => Future.value(mockToken));
      final LoginResult result = await controller.login("email", "password");
      expect(result, LoginResult.success);
      final token = container.read(tokenProvider);
      expect(mockToken, token);
    });
  });
}
