import 'package:firebase_analytics/firebase_analytics.dart';

class PostAnalyticsUseCase {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  Future<void> screen(String screen) async {
    await _analytics.logScreenView(screenClass: screen);
  }

  Future<void> log(String name) async {
    await _analytics.logEvent(name: name);
  }
}
