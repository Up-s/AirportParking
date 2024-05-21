import 'dart:async';

import 'package:airport_parking/presentation/map/map_screen.dart';
import 'package:airport_parking/presentation/splash/splash_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  StreamSubscription? _streamSubscription;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<SplashViewModel>();
      _streamSubscription = viewModel.eventStream.listen((event) {
        event.when(
          isOpen: () {
            _showAlertDialog(context, '점검중', '잠시 후 이용 바랍니다.', []);
          },
          update: () {
            _showAlertDialog(context, '업데이트',
                '버전이 너무 낮아 앱을 이용하실 수 없습니다. 업데이트 후 이용해 주세요.', []);
          },
          later: () {
            _showAlertDialog(
              context,
              '업데이트',
              '최선 버전이 업데이트되었습니다.',
              [
                CupertinoDialogAction(
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const MapScreen(),
                      ),
                    );
                  },
                  child: const Text('다음에'),
                ),
                CupertinoDialogAction(
                  isDefaultAction: true,
                  onPressed: () {
                    //
                  },
                  child: const Text('업데이트'),
                ),
              ],
            );
          },
          pass: () {
            Navigator.pushAndRemoveUntil(
              context,
              CupertinoPageRoute(builder: (context) => const MapScreen()),
              (route) => false,
            );

            // Navigator.push(
            //   context,
            //   CupertinoPageRoute(
            //     builder: (context) => const MapScreen(),
            //   ),
            // );
          },
          error: (message) {
            _showAlertDialog(context, 'System Error', message, []);
          },
        );
      });
    });
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SplashViewModel>();

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: SafeArea(
        child: SizedBox.expand(
          child: Container(
            decoration: const BoxDecoration(color: CupertinoColors.black),
            child: Center(
              child: SizedBox(
                width: 120,
                height: 120,
                child: Lottie.asset('assets/lottie/loading.json'),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // This shows a CupertinoModalPopup which hosts a CupertinoAlertDialog.
  void _showAlertDialog(BuildContext context, String title, String content,
      List<CupertinoDialogAction> actions) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: actions,
      ),
    );
  }
}
