import 'package:freezed_annotation/freezed_annotation.dart';

part 'airport_event.freezed.dart';

@freezed
sealed class AirportEvent with _$AirportEvent {
  const factory AirportEvent.apiFetch(String query) = ApiFetch;
  const factory AirportEvent.apiSuccess() = ApiSuccess;
  const factory AirportEvent.apiError(String e) = ApiError;
}