import 'dart:async';

import 'package:airport_parking/domain/model/airport.dart';
import 'package:airport_parking/domain/use_case/map_change_page_use_case.dart';
import 'package:airport_parking/presentation/map/map_event.dart';
import 'package:flutter/cupertino.dart';

class MapViewModel with ChangeNotifier {
  final MapChangePageUseCase useCase;

  final _eventController = StreamController<MapEvent>.broadcast();

  Stream<MapEvent> get eventStream => _eventController.stream;

  List<Airport> airportList = [];

  MapViewModel(this.useCase) {
    airportList = useCase.data.airportList;
  }

  void onEvent(MapEvent event) {
    event.when(
      changePage: changePage,
      selectAirport: selectAirport,
    );
  }

  Future<void> changePage(int index) async {
    airportList = useCase(airportList, index);
    notifyListeners();
  }

  Future<void> selectAirport(Airport airport) async {
    _eventController.add(MapEvent.selectAirport(airport));
  }
}
