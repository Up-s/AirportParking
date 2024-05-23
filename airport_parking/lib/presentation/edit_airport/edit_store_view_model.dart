import 'dart:async';

import 'package:airport_parking/domain/model/store.dart';
import 'package:airport_parking/domain/use_case/post_store_use_case.dart';
import 'package:airport_parking/presentation/edit_airport/edit_store_event.dart';
import 'package:flutter/material.dart';

class EditStoreViewModel with ChangeNotifier {
  PostStoreUseCase useCase;

  final _eventController = StreamController<EditStoreEvent>();

  Stream<EditStoreEvent> get eventStream => _eventController.stream;

  EditStoreViewModel(this.useCase) {
    // updateStore(
    //   'CJJ',
    //   '센트럴파킹센터',
    //   '1555-3315',
    //   'https://centralparking.kr/',
    // );
  }

  Future<void> updateStore(
    String? path,
    String? title,
    String? phone,
    String? website,
  ) async {
    if (path == null ||
        path.isEmpty ||
        title == null ||
        title.isEmpty ||
        phone == null ||
        phone.isEmpty ||
        website == null ||
        website.isEmpty) {
      _eventController.add(const EditStoreEvent.showAlert('비어있음'));
      return;
    }

    final Store store = Store(
      isAd: false,
      path: path,
      title: title,
      phone: phone,
      website: website,
    );

    final result = await useCase(store);

    result.when(
      success: (_) {
        _eventController.add(const EditStoreEvent.showAlert('업데이트 완료'));
      },
      error: (message) {
        _eventController.add(EditStoreEvent.showAlert(message));
      },
    );
  }
}
