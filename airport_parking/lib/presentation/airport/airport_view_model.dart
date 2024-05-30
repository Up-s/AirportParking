import 'dart:async';

import 'package:airport_parking/domain/model/airport.dart';
import 'package:airport_parking/domain/model/open_airport.dart';
import 'package:airport_parking/domain/model/store.dart';
import 'package:airport_parking/domain/use_case/get_open_api_use_case.dart';
import 'package:airport_parking/domain/use_case/get_store_use_case.dart';
import 'package:airport_parking/domain/use_case/post_analytics_use_case.dart';
import 'package:airport_parking/presentation/airport/airport_event.dart';
import 'package:airport_parking/util/result.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AirportViewModel with ChangeNotifier {
  final GetOpenApiUseCase openApiUseCase;
  final GetStoreUseCase storeUseCase;
  final PostAnalyticsUseCase analyticsUseCase;

  final _eventController = StreamController<AirportEvent>.broadcast();

  Stream<AirportEvent> get eventStream => _eventController.stream;

  List<OpenAirport> openAirportList = [];
  List<Store> storeList = [];

  AirportViewModel(
    this.openApiUseCase,
    this.storeUseCase,
    this.analyticsUseCase,
  ) {
    analyticsUseCase.screen('airport_screen');
  }

  void onEvent(AirportEvent event) {
    event.when(
      storeTap: (store) {
        analyticsUseCase.log('store_${store.title}');
        _eventController.add(AirportEvent.storeTap(store));
      },
      showAlert: (message) {
        _eventController.add(AirportEvent.showAlert(message));
      },
    );
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

  void callTap(Store store) {
    analyticsUseCase.log('call_${store.title}');
    _callPhone(store.phone);
  }

  void websiteTap(Store store) {
    analyticsUseCase.log('websiteTap_${store.title}');
    _openWebsite(store.website);
  }


  Future<void> _callPhone(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    }
  }

  Future<void> _openWebsite(String url) async {
    final Uri launchUri = Uri.parse(url);
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    }
  }
}
