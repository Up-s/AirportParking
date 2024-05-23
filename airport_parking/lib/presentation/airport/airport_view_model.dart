import 'dart:async';

import 'package:airport_parking/domain/model/airport.dart';
import 'package:airport_parking/domain/model/open_airport.dart';
import 'package:airport_parking/domain/model/store.dart';
import 'package:airport_parking/domain/use_case/get_open_api_use_case.dart';
import 'package:airport_parking/domain/use_case/get_store_use_case.dart';
import 'package:airport_parking/presentation/airport/airport_event.dart';
import 'package:airport_parking/util/result.dart';
import 'package:flutter/material.dart';

class AirportViewModel with ChangeNotifier {
  final GetOpenApiUseCase openApiUseCase;
  final GetStoreUseCase storeUseCase;

  final _eventController = StreamController<AirportEvent>.broadcast();

  Stream<AirportEvent> get eventStream => _eventController.stream;

  List<OpenAirport> openAirportList = [];
  List<Store> storeList = [];

  AirportViewModel(this.openApiUseCase, this.storeUseCase);

  void onEvent(AirportEvent event) {
    _eventController.add(event);
  }

  Future<void> load(Airport airport) async {
    final Result<List<OpenAirport>> openApiResult =
        await openApiUseCase(airport.en);

    openApiResult.when(
      success: (data) {
        openAirportList = data;
      },
      error: (message) {
        _eventController.add(AirportEvent.showAlert(message));
      },
    );

    notifyListeners();

    final Result<List<Store>> storeResult = await storeUseCase(airport.en);

    storeResult.when(
      success: (data) {
        storeList = data;
        storeList.shuffle();
      },
      error: (message) {
        _eventController.add(AirportEvent.showAlert(message));
      },
    );

    notifyListeners();
  }
}
