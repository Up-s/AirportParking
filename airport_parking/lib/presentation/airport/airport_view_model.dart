import 'dart:async';

import 'package:airport_parking/domain/model/open_airport.dart';
import 'package:airport_parking/domain/use_case/get_open_api_use_case.dart';
import 'package:airport_parking/presentation/airport/airport_event.dart';
import 'package:airport_parking/util/result.dart';
import 'package:flutter/material.dart';

class AirportViewModel with ChangeNotifier {
  final GetOpenApiUseCase useCase;

  final _eventController = StreamController<AirportEvent>.broadcast();

  Stream<AirportEvent> get eventStream => _eventController.stream;

  List<OpenAirport> openAirportList = [];

  AirportViewModel(this.useCase);

  void onEvent(AirportEvent event) {
    event.when(
      apiFetch: _load,
      apiSuccess: () {},
      apiError: (error) {},
    );
  }

  Future<void> _load(String query) async {
    final Result<List<OpenAirport>> result = await useCase(query);

    result.when(
      success: (data) {
        openAirportList = data;
      },
      error: (message) {
        _eventController.add(AirportEvent.apiError(message));
      },
    );

    notifyListeners();
  }
}
