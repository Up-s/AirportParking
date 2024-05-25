// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppConfigImpl _$$AppConfigImplFromJson(Map<String, dynamic> json) =>
    _$AppConfigImpl(
      latestVersion: json['latestVersion'] as String,
      minVersion: json['minVersion'] as String,
      isOpen: json['isOpen'] as bool,
    );

Map<String, dynamic> _$$AppConfigImplToJson(_$AppConfigImpl instance) =>
    <String, dynamic>{
      'latestVersion': instance.latestVersion,
      'minVersion': instance.minVersion,
      'isOpen': instance.isOpen,
    };
