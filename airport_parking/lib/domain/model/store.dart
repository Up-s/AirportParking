import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';

part 'store.g.dart';

@freezed
class Store with _$Store {
  factory Store({
    required bool isAd,
    required String path,
    required String title,
    required String phone,
    required String website,
  }) = _Store;

  factory Store.fromJson(Map<String, Object?> json) => _$StoreFromJson(json);
}