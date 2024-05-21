import 'package:freezed_annotation/freezed_annotation.dart';

part 'airport.freezed.dart';

part 'airport.g.dart';

@freezed
class Airport with _$Airport {
  factory Airport({
    required String en,
    required String ko,
  }) = _Airport;

  factory Airport.fromJson(Map<String, Object?> json) => _$AirportFromJson(json);
}