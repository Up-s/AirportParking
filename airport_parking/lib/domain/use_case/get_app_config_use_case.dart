import 'package:airport_parking/domain/model/app_config.dart';
import 'package:airport_parking/domain/respository/firebase_api_repository.dart';
import 'package:airport_parking/presentation/splash/splash_app_config_event.dart';
import 'package:airport_parking/util/result.dart';
import 'package:package_info_plus/package_info_plus.dart';

class GetAppConfigUseCase {
  final FirebaseApiRepository repository;

  GetAppConfigUseCase(this.repository);

  Future<SplashAppConfigEvent> call() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    // String appName = packageInfo.appName;
    // print("appName => ${appName}");
    // String packageName = packageInfo.packageName;
    // print("packageName => ${packageName}");
    // String buildNumber = packageInfo.buildNumber;
    // print("buildNumber => ${buildNumber}");
    String currentVersion = packageInfo.version;
    // print("currentVersion => ${currentVersion}");

    final result = await repository.fectchConfig();

    return result.when(
      success: (config) {
        if (config.isOpen == false) {
          // 서버 정지
          return const SplashAppConfigEvent.isOpen();
        }

        if (_isVersionLessThan(currentVersion, config.minVersion)) {
          // 강제 업데이트
          return const SplashAppConfigEvent.update();
        } else if (_isVersionLessThan(currentVersion, config.latestVersion)) {
          // 선택 업데이트
          return const SplashAppConfigEvent.later();
        } else {
          // 최신 버전
          return const SplashAppConfigEvent.pass();
        }
      },
      error: (message) {
        return SplashAppConfigEvent.error(message);
      },
    );
  }

  // v1 이 v2 보다 낮은가
  bool _isVersionLessThan(String v1, String v2) {
    List<String> v1Parts = v1.split('.');
    List<String> v2Parts = v2.split('.');

    for (int i = 0; i < v1Parts.length; i++) {
      int v1Part = int.parse(v1Parts[i]);
      int v2Part = int.parse(v2Parts[i]);

      if (v1Part < v2Part) return true;
      if (v1Part > v2Part) return false;
    }

    return false;
  }
}
