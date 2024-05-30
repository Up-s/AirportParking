import 'dart:async';

import 'package:airport_parking/domain/model/airport.dart';
import 'package:airport_parking/domain/use_case/airport_list_use_case.dart';
import 'package:airport_parking/domain/use_case/post_analytics_use_case.dart';
import 'package:airport_parking/presentation/map/map_event.dart';
import 'package:flutter/cupertino.dart';

class MapViewModel with ChangeNotifier {
  final AirportListUseCase pageUseCase;
  final PostAnalyticsUseCase analyticsUseCase;

  final _eventController = StreamController<MapEvent>.broadcast();

  Stream<MapEvent> get eventStream => _eventController.stream;

  List<Airport> airportList = [];

  MapViewModel(
    this.pageUseCase,
    this.analyticsUseCase,
  ) {
    analyticsUseCase.screen('map_screen');
    airportList = pageUseCase.getAirportList();
  }

  void onEvent(MapEvent event) {
    event.when(
      changePage: changePage,
      likeAirport: (_) {},
      selectAirport: selectAirport,
    );
  }

  Future<void> changePage(int index) async {
    airportList = pageUseCase.changeAirportList(airportList, index);
    notifyListeners();
  }

  Future<void> selectAirport(Airport airport) async {
    analyticsUseCase.log('airport_${airport.ko}');
    _eventController.add(MapEvent.selectAirport(airport));
  }
}
