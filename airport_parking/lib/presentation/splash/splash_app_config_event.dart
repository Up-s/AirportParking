import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_app_config_event.freezed.dart';

@freezed
sealed class SplashAppConfigEvent with _$SplashAppConfigEvent {
  const factory SplashAppConfigEvent.isOpen() = IsOpen;
  const factory SplashAppConfigEvent.update() = Update;
  const factory SplashAppConfigEvent.later() = Later;
  const factory SplashAppConfigEvent.pass() = Pass;
  const factory SplashAppConfigEvent.error(String e) = Error;
}