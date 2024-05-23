import 'package:airport_parking/domain/model/app_config.dart';
import 'package:airport_parking/domain/model/store.dart';
import 'package:airport_parking/domain/repository/firebase_repository.dart';
import 'package:airport_parking/domain/use_case/get_config_use_case.dart';
import 'package:airport_parking/presentation/splash/splash_event.dart';
import 'package:airport_parking/util/result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('앱 버전 확인', () async {
    final repository = FakeFirebaseApiRepository();
    final configUseCase = GetConfigUseCase(repository);

    String currentVersion = '0.0.9';
    SplashEvent event = await configUseCase(currentVersion);
    expect(event == const SplashEvent.update(), true);

    currentVersion = '1.2.0';
    event = await configUseCase(currentVersion);
    expect(event == const SplashEvent.later(), true);

    currentVersion = '1.6.0';
    event = await configUseCase(currentVersion);
    expect(event == const SplashEvent.pass(), true);
  });
}

class FakeFirebaseApiRepository extends FirebaseRepository {
  @override
  Future<Result<AppConfig>> fetchConfig() async {
    Future.delayed(const Duration(milliseconds: 500));

    final result = AppConfig(
      latestVersion: "1.6.0",
      minVersion: "1.0.0",
      isOpen: true,
    );
    return Result.success(result);
  }

  @override
  Future<Result<List<Store>>> fetchStore(String path) {
    // TODO: implement fetchStore
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> updateStore(Store store) {
    // TODO: implement updateStore
    throw UnimplementedError();
  }
}
