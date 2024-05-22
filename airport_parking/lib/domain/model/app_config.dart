import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config.freezed.dart';

part 'app_config.g.dart';

@freezed
class AppConfig with _$AppConfig {
  factory AppConfig({
    required String latestVersion,
    required String minVersion,
    required bool isOpen,
  }) = _AppConfig;

  factory AppConfig.fromJson(Map<String, Object?> json) =>
      _$AppConfigFromJson(json);

  factory AppConfig.formDocument(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    final String latestVersion = data['latest_version'];
    final String minVersion = data['min_version'];
    final bool isOpen = data['isOpen'];

    return AppConfig(
      latestVersion: latestVersion,
      minVersion: minVersion,
      isOpen: isOpen,
    );
  }
}
