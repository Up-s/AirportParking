import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_store_event.freezed.dart';

@freezed
sealed class EditStoreEvent with _$EditStoreEvent {
  const factory EditStoreEvent.showAlert(String message) = ShowAlert;
}