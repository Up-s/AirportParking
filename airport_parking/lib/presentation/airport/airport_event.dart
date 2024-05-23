import 'package:airport_parking/domain/model/store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'airport_event.freezed.dart';

@freezed
sealed class AirportEvent with _$AirportEvent {
  const factory AirportEvent.storeTap(Store store) = StoreTap;
  const factory AirportEvent.showAlert(String message) = ShowAlert;
}