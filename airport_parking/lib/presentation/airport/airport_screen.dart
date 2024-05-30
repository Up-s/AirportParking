import 'dart:async';

import 'package:airport_parking/domain/model/airport.dart';
import 'package:airport_parking/presentation/airport/airport_event.dart';
import 'package:airport_parking/presentation/airport/airport_view_model.dart';
import 'package:airport_parking/presentation/airport/components/airport_item.dart';
import 'package:airport_parking/presentation/airport/components/store_item.dart';
import 'package:airport_parking/util/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

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

      viewModel.load(widget.airport);

      _streamSubscription = viewModel.eventStream.listen((event) {
        event.when(
          storeTap: (store) {
            showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) {
                return CupertinoActionSheet(
                  title: Text(
                    store.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: InColors.gray900,
                    ),
                  ),
                  actions: <CupertinoActionSheetAction>[
                    CupertinoActionSheetAction(
                      isDefaultAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                        viewModel.callTap(store);
                      },
                      child: const Text('전화걸기'),
                    ),
                    CupertinoActionSheetAction(
                      isDefaultAction: true,
                      onPressed: () {
                        Navigator.pop(context);
                        viewModel.websiteTap(store);
                      },
                      child: const Text('홈페이지'),
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    isDefaultAction: true,
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('닫기'),
                  ),
                );
              },
            );
          },
          showAlert: (message) {
            showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: const Text('알림'),
                content: Text(message),
                actions: [
                  CupertinoDialogAction(
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('확인'),
                  ),
                ],
              ),
            );
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
    final viewModel = context.watch<AirportViewModel>();

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          widget.airport.ko,
          style: const TextStyle(
            fontSize: 22,
            color: CupertinoColors.white,
          ),
        ),
        backgroundColor: CupertinoColors.black,
      ),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 260,
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
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(
                top: 4.0,
                left: 16.0,
                right: 16.0,
                bottom: 6.0,
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: 1.0,
                        child: Divider(color: InColors.gray700),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    const Text(
                      '외부 주차장',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: CupertinoColors.white,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      flex: 5,
                      child: SizedBox(
                        width: double.infinity,
                        height: 1.0,
                        child: Divider(color: InColors.gray700),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: ListView(
                  children: viewModel.storeList.map((store) {
                return GestureDetector(
                  onTap: () {
                    viewModel.onEvent(AirportEvent.storeTap(store));
                  },
                  child: StoreItem(store: store),
                );
              }).toList()),
            )
          ],
        ),
      ),
    );
  }
}
