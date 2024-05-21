import 'dart:async';

import 'package:airport_parking/domain/use_case/get_app_config_use_case.dart';
import 'package:airport_parking/presentation/splash/splash_app_config_event.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SplashViewModel with ChangeNotifier {
  final GetAppConfigUseCase useCase;

  final _eventController = StreamController<SplashAppConfigEvent>.broadcast();

  Stream<SplashAppConfigEvent> get eventStream => _eventController.stream;


  SplashViewModel(this.useCase) {
    _fectchFirebaseConfig();
  }

  Future<void> _fectchFirebaseConfig() async {
    await Future.delayed(const Duration(milliseconds: 1500));

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    // String appName = packageInfo.appName;
    // print("appName => ${appName}");
    // String packageName = packageInfo.packageName;
    // print("packageName => ${packageName}");
    // String buildNumber = packageInfo.buildNumber;
    // print("buildNumber => ${buildNumber}");
    String currentVersion = packageInfo.version;
    // print("currentVersion => ${currentVersion}");

    final result = await useCase(currentVersion);
    _eventController.add(result);
  }
}