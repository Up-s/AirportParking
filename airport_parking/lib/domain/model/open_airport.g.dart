// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_airport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenAirportImpl _$$OpenAirportImplFromJson(Map<String, dynamic> json) =>
    _$OpenAirportImpl(
      aprEng: json['aprEng'] as String,
      aprKor: json['aprKor'] as String,
      parkingAirportCodeName: json['parkingAirportCodeName'] as String,
      parkingFullSpace: (json['parkingFullSpace'] as num).toInt(),
      parkingGetdate: json['parkingGetdate'] as String,
      parkingGettime: json['parkingGettime'] as String,
      parkingIincnt: (json['parkingIincnt'] as num).toInt(),
      parkingIoutcnt: (json['parkingIoutcnt'] as num).toInt(),
      parkingIstay: (json['parkingIstay'] as num).toInt(),
    );

Map<String, dynamic> _$$OpenAirportImplToJson(_$OpenAirportImpl instance) =>
    <String, dynamic>{
      'aprEng': instance.aprEng,
      'aprKor': instance.aprKor,
      'parkingAirportCodeName': instance.parkingAirportCodeName,
      'parkingFullSpace': instance.parkingFullSpace,
      'parkingGetdate': instance.parkingGetdate,
      'parkingGettime': instance.parkingGettime,
      'parkingIincnt': instance.parkingIincnt,
      'parkingIoutcnt': instance.parkingIoutcnt,
      'parkingIstay': instance.parkingIstay,
    };
