import 'package:airport_parking/domain/model/store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.freezed.dart';

@freezed
sealed class SplashEvent with _$SplashEvent {
  const factory SplashEvent.isOpen() = IsOpen;
  const factory SplashEvent.update() = Update;
  const factory SplashEvent.later() = Later;
  const factory SplashEvent.pass() = Pass;
  const factory SplashEvent.error(String e) = Error;
}