import 'dart:async';
import 'dart:collection';

import 'package:airport_parking/data/data_source/airport_data.dart';
import 'package:airport_parking/presentation/map/components/map_airport_item.dart';
import 'package:airport_parking/presentation/map/components/map_animate_item.dart';
import 'package:airport_parking/presentation/map/map_event.dart';
import 'package:airport_parking/presentation/map/map_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  StreamSubscription? _streamSubscription;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<MapViewModel>();

      viewModel.onEvent(const MapEvent.changePage(0));

      _streamSubscription = viewModel.eventStream.listen((event) {
        event.when(
          changePage: (_) {},
          selectAirport: (airport) {
            print(airport);
          },
        );
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();
    final airportList = viewModel.changePageUseCase.data.airportList;

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 0.0,
                  left: 40.0,
                  right: 16.0,
                  bottom: 0.0,
                ),
                child: Stack(children: [
                  Image.asset(
                    'assets/map/map_base.png',
                    fit: BoxFit.fill,
                  ),
                  ...List.generate(airportList.length, (index) {
                    return MapAnimateItem(airport: airportList[index]);
                  }),
                ]),
              ),
            ),
            SizedBox(
              height: 88,
              width: double.infinity,
              child: PageView.builder(
                controller: _pageController,
                itemCount: airportList.length,
                onPageChanged: (int index) {
                  viewModel.onEvent(MapEvent.changePage(index));
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: GestureDetector(
                      onTap: () {
                        viewModel.onEvent(
                            MapEvent.selectAirport(airportList[index]));
                      },
                      child: MapAirportItem(
                        airport: airportList[index],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 48,
            ),
          ],
        ),
      ),
    );
  }
}
