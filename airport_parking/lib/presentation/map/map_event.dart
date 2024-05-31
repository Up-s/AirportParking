import 'package:airport_parking/domain/model/airport.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_event.freezed.dart';

@freezed
sealed class MapEvent with _$MapEvent {
  const factory MapEvent.changePage(int index) = ChangePage;
  const factory MapEvent.likeAirport(int index) = LikeAirport;
  const factory MapEvent.selectAirport(Airport airport) = SelectAirport;
}