import 'dart:async';

import 'package:airport_parking/domain/model/airport.dart';
import 'package:airport_parking/presentation/airport/airport_event.dart';
import 'package:airport_parking/presentation/airport/airport_view_model.dart';
import 'package:airport_parking/presentation/airport/components/airport_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class AirportScreen extends StatefulWidget {
  final Airport airport;

  const AirportScreen({
    super.key,
    required this.airport,
  });

  @override
  State<AirportScreen> createState() => _AirportScreenState();
}

class _AirportScreenState extends State<AirportScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  StreamSubscription? _streamSubscription;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<AirportViewModel>();

      viewModel.onEvent(AirportEvent.apiFetch(widget.airport.en));

      _streamSubscription = viewModel.eventStream.listen((event) {
        event.when(
          apiFetch: (_) {},
          apiSuccess: () {},
          apiError: (error) {},
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
    final viewModel = context.watch<AirportViewModel>();

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.airport.ko),
        backgroundColor: CupertinoColors.black,
      ),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 280,
              child: viewModel.openAirportList.isEmpty
                  ? Center(
                      child: SizedBox(
                        width: 84,
                        height: 84,
                        child: Lottie.asset('assets/lottie/loading.json'),
                      ),
                    )
                  : PageView.builder(
                      controller: _pageController,
                      itemCount: viewModel.openAirportList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: AirportItem(
                            openAirport: viewModel.openAirportList[index],
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
