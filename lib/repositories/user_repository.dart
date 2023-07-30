import 'package:chain/models/user.dart';

import 'api_repository.dart';

class UserRepository {
  UserRepository(ApiRepository api) : _apiRepository = api;

  final ApiRepository _apiRepository;

  Future<User> fetchSelf() async {
    final user = User.fromJson(await _apiRepository.get("users/me"));

    return user;
  }
}
