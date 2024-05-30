// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AirportImpl _$$AirportImplFromJson(Map<String, dynamic> json) =>
    _$AirportImpl(
      en: json['en'] as String,
      ko: json['ko'] as String,
      homepage: json['homepage'] as String,
      mapPath: json['mapPath'] as String,
      airportPath: json['airportPath'] as String,
      isSelect: json['isSelect'] as bool,
    );

Map<String, dynamic> _$$AirportImplToJson(_$AirportImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ko': instance.ko,
      'homepage': instance.homepage,
      'mapPath': instance.mapPath,
      'airportPath': instance.airportPath,
      'isSelect': instance.isSelect,
    };
