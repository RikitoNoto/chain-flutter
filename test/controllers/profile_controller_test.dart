import 'package:chain/controllers/profile_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'package:chain/repositories/api_repository.dart';
// import 'profile_controller_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ApiRepository>()])
@GenerateNiceMocks([MockSpec<ProviderRef>()])
void main() {
  setUpAll(() {});

  setUp(() async {});

  tearDown(() async {});
}

class ProfileControllerSpy extends ProfileController {
  ProfileControllerSpy({required ref, required ApiRepository api})
      : _api = api,
        super(ref: ref);
  final ApiRepository _api;
  @override
  ApiRepository get api => _api;
}
