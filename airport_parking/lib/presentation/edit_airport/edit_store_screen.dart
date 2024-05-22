import 'dart:async';

import 'package:airport_parking/presentation/edit_airport/edit_store_view_model.dart';
import 'package:airport_parking/util/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditStoreScreen extends StatefulWidget {
  const EditStoreScreen({super.key});

  @override
  State<EditStoreScreen> createState() => _EditStoreScreenState();
}

class _EditStoreScreenState extends State<EditStoreScreen> {
  final TextEditingController _pathController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _websiteController = TextEditingController();
  StreamSubscription? _subscription;

  String info = """
  김포: GMP,   김해: PUS,  제주: CJU,   대구: TAE
  광주: KWJ,   여수: RSU,  울산: USN,   군산: KUV
  원주: WJU,   청주: CJJ
  """;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<EditStoreViewModel>();
      _subscription = viewModel.eventStream.listen((event) {
        event.when(
          showAlert: (message) {
            showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: Text('알림'),
                content: Text(message),
                actions: [
                  CupertinoDialogAction(
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('확인'),
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
    _subscription?.cancel();
    _pathController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    _websiteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<EditStoreViewModel>();

    return CupertinoPageScaffold(
      backgroundColor: InColors.gray600,
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Text(info),
              SizedBox(
                height: 48.0,
                child: CupertinoTextField(
                  placeholder: '지역',
                  controller: _pathController,
                ),
              ),
              const SizedBox(height: 24.0),
              SizedBox(
                height: 48.0,
                child: CupertinoTextField(
                  placeholder: '이름',
                  controller: _nameController,
                ),
              ),
              const SizedBox(height: 24.0),
              SizedBox(
                height: 48.0,
                child: CupertinoTextField(
                  placeholder: '전화번호',
                  controller: _phoneController,
                ),
              ),
              const SizedBox(height: 24.0),
              SizedBox(
                height: 48.0,
                child: CupertinoTextField(
                  placeholder: '홈페이지',
                  controller: _websiteController,
                ),
              ),
              const SizedBox(height: 24.0),
              CupertinoButton(
                color: InColors.gray900,
                onPressed: () {
                  viewModel.updateStore(
                    _pathController.text,
                    _nameController.text,
                    _phoneController.text,
                    _websiteController.text,
                  );
                },
                child: const Text('등록'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
