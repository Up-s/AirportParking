import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_airport.freezed.dart';

part 'open_airport.g.dart';

@freezed
class OpenAirport with _$OpenAirport {
  factory OpenAirport({
    required String aprEng,
    required String aprKor,
    required String parkingAirportCodeName, // 주차장 이름
    required int parkingFullSpace, // 전체 주차면 수
    required String parkingGetdate, // 업데이트 일자
    required String parkingGettime, // 업데이트 시간
    required int parkingIincnt, // 입고된 차량 수
    required int parkingIoutcnt, // 출고된 차량 수
    required int parkingIstay, // 현재 주차 수
  }) = _OpenAirport;

  factory OpenAirport.fromJson(Map<String, Object?> json) =>
      _$OpenAirportFromJson(json);
}
