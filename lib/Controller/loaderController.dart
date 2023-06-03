import 'dart:async';
import 'package:get/get.dart';

class LoaderController extends GetxController {
  RxBool loader = true.obs;

  void loaderFunc() {
    Timer(const Duration(seconds: 3), () {
      loader.value = false;
    });
  }
}
