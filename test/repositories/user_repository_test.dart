import 'package:chain/repositories/user_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chain/repositories/api_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../controllers/login_controller_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ApiRepository>()])
void main() {
  setUpAll(() {});

  setUp(() async {});

  tearDown(() async {});

  fetchUserTest();
}

void fetchUserTest() {
  group('fetch user test', () {
    test('should get user when return a user from api 1', () async {
      final api = MockApiRepository();
      when(api.get(any)).thenAnswer((_) => Future.value({
            "id": "id",
            "name": "name",
            "description": "description",
            "thumbnail": "thumbnail",
          }));
      final user = await UserRepository(api).fetchSelf();

      expect(user.id, "id");
      expect(user.name, "name");
      expect(user.description, "description");
      expect(user.thumbnail, "thumbnail");
    });

    test('should get user when return a user from api 2', () async {
      final api = MockApiRepository();
      when(api.get(any)).thenAnswer((_) => Future.value({
            "id": "id2",
            "name": "name2",
            "description": "description2",
            "thumbnail": "thumbnail2",
          }));
      final user = await UserRepository(api).fetchSelf();

      expect(user.id, "id2");
      expect(user.name, "name2");
      expect(user.description, "description2");
      expect(user.thumbnail, "thumbnail2");
    });

    test('should give path to api', () async {
      final api = MockApiRepository();
      when(api.get(any)).thenAnswer((Invocation invocation) {
        expect(invocation.positionalArguments[0], "users/me");
        return Future.value({
          "id": "id",
          "name": "name",
          "description": "description",
          "thumbnail": "thumbnail",
        });
      });
      final user = await UserRepository(api).fetchSelf();

      expect(user.id, "id");
      expect(user.name, "name");
      expect(user.description, "description");
      expect(user.thumbnail, "thumbnail");
    });
  });
}
