// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreImpl _$$StoreImplFromJson(Map<String, dynamic> json) => _$StoreImpl(
      isAd: json['isAd'] as bool,
      path: json['path'] as String,
      title: json['title'] as String,
      phone: json['phone'] as String,
      website: json['website'] as String,
    );

Map<String, dynamic> _$$StoreImplToJson(_$StoreImpl instance) =>
    <String, dynamic>{
      'isAd': instance.isAd,
      'path': instance.path,
      'title': instance.title,
      'phone': instance.phone,
      'website': instance.website,
    };
