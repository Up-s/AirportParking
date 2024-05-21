import 'package:flutter/cupertino.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: SafeArea(
        child: SizedBox.expand(
          child: Container(
            decoration: const BoxDecoration(color: CupertinoColors.black),
            child: const Center(
              child: Text(
                'Map Screen',
                style: TextStyle(
                  fontSize: 40,
                  color: CupertinoColors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
