import 'dart:async';

import 'package:airport_parking/domain/use_case/get_config_use_case.dart';
import 'package:airport_parking/domain/use_case/post_analytics_use_case.dart';
import 'package:airport_parking/presentation/splash/splash_event.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SplashViewModel with ChangeNotifier {
  final GetConfigUseCase useCase;
  final PostAnalyticsUseCase analyticsUseCase;

  final _eventController = StreamController<SplashEvent>.broadcast();

  Stream<SplashEvent> get eventStream => _eventController.stream;

  SplashViewModel(
    this.useCase,
    this.analyticsUseCase,
  ) {
    analyticsUseCase.screen('splash_screen');
    _load();
  }

  Future<void> _load() async {
    await Future.delayed(const Duration(milliseconds: 1000));

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    // String appName = packageInfo.appName;
    // print("appName => ${appName}");
    // String packageName = packageInfo.packageName;
    // print("packageName => ${packageName}");
    // String buildNumber = packageInfo.buildNumber;
    // print("buildNumber => ${buildNumber}");
    String currentVersion = packageInfo.version;
    // print("currentVersion => ${currentVersion}");

    final resultConfig = await useCase(currentVersion);
    _eventController.add(resultConfig);
  }
}
