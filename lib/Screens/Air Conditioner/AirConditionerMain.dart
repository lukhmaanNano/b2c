import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/development.dart';

class AirConditioner extends StatefulWidget {
  const AirConditioner({Key? key}) : super(key: key);

  @override
  State<AirConditioner> createState() => _AirConditionerState();
}

class _AirConditionerState extends State<AirConditioner> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              ExampleDialog.show();
              // Get.to(const Development());
              Navigator.of(context).pop();
            },
          ),
          title: const Text('Air Conditioner'),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.search, color: Colors.white),
            )
          ],
        ),
        body: const Text('Air Conditioner'));
  }
}

class ExampleDialog {
  static Future show() async {
    return Get.snackbar(
      'Back to',
      'Dashboard',
      icon: const Icon(CupertinoIcons.flame_fill),
      duration: const Duration(seconds: 3),
      snackPosition: SnackPosition.TOP,
    );
  }
}
