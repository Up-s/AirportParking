import 'package:airport_parking/domain/repository/firebase_repository.dart';
import 'package:airport_parking/presentation/splash/splash_event.dart';

class GetConfigUseCase {
  final FirebaseRepository repository;

  GetConfigUseCase(this.repository);

  Future<SplashEvent> call(String currentVersion) async {
    final result = await repository.fetchConfig();

    return result.when(
      success: (config) {
        if (config.isOpen == false) {
          // 서버 정지
          return const SplashEvent.isOpen();
        }

        if (_isVersionLessThan(currentVersion, config.minVersion)) {
          // 강제 업데이트
          return const SplashEvent.update();
        } else if (_isVersionLessThan(currentVersion, config.latestVersion)) {
          // 선택 업데이트
          return const SplashEvent.later();
        } else {
          // 최신 버전
          return const SplashEvent.pass();
        }
      },
      error: (message) {
        return SplashEvent.error(message);
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
