import 'package:cloud_firestore/cloud_firestore.dart';
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

  factory Store.formDocument(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    final bool isAd = data['isAd'];
    final String path = data['path'];
    final String title = data['title'];
    final String phone = data['phone'];
    final String website = data['website'];

    return Store(
      isAd: isAd,
      path: path,
      title: title,
      phone: phone,
      website: website,
    );
  }
}