import 'package:airport_parking/domain/model/app_config.dart';
import 'package:airport_parking/domain/model/store.dart';
import 'package:airport_parking/domain/respository/firebase_api_repository.dart';
import 'package:airport_parking/domain/use_case/get_app_config_use_case.dart';
import 'package:airport_parking/presentation/splash/splash_app_config_event.dart';
import 'package:airport_parking/util/result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('앱 버전 확인', () async {
    final repository = FakeFirebaseApiRepository();
    final appConfigUseCase = GetAppConfigUseCase(repository);

    String currentVersion = '0.0.9';
    SplashAppConfigEvent event = await appConfigUseCase(currentVersion);
    expect(event == const SplashAppConfigEvent.update(), true);

    currentVersion = '1.2.0';
    event = await appConfigUseCase(currentVersion);
    expect(event == const SplashAppConfigEvent.later(), true);

    currentVersion = '1.6.0';
    event = await appConfigUseCase(currentVersion);
    expect(event == const SplashAppConfigEvent.pass(), true);
  });
}

// 임시데이터
class FakeFirebaseApiRepository extends FirebaseApiRepository {
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
  Future<Result<void>> updateStore(Store store) {
    // TODO: implement updateStore
    throw UnimplementedError();
  }
}
