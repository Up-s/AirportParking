import 'dart:async';

import 'package:airport_parking/domain/model/airport.dart';
import 'package:airport_parking/domain/use_case/map_change_page_use_case.dart';
import 'package:airport_parking/presentation/map/map_event.dart';
import 'package:flutter/cupertino.dart';

class MapViewModel with ChangeNotifier {
  final MapChangePageUseCase changePageUseCase;

  final _eventController = StreamController<MapEvent>.broadcast();

  Stream<MapEvent> get eventStream => _eventController.stream;

  MapViewModel(this.changePageUseCase);

  void onEvent(MapEvent event) {
    event.when(
      changePage: changePage,
      selectAirport: selectAirport,
    );
  }

  Future<void> changePage(int index) async {
    changePageUseCase(index);
    notifyListeners();
  }

  Future<void> selectAirport(Airport airport) async {
    _eventController.add(MapEvent.selectAirport(airport));
  }
}
