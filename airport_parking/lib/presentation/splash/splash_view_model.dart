import 'dart:async';

import 'package:airport_parking/domain/use_case/get_app_config_use_case.dart';
import 'package:airport_parking/presentation/splash/splash_app_config_event.dart';
import 'package:flutter/material.dart';

class SplashViewModel with ChangeNotifier {
  final GetAppConfigUseCase useCase;

  final _eventController = StreamController<SplashAppConfigEvent>.broadcast();

  Stream<SplashAppConfigEvent> get eventStream => _eventController.stream;


  SplashViewModel(this.useCase) {
    _fectchFirebaseConfig();
  }

  Future<void> _fectchFirebaseConfig() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    final result = await useCase();
    _eventController.add(result);
  }
}