import 'package:b2c/Controller/themeService.dart';
import 'package:b2c/splashscreen.dart';
import 'package:b2c/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'b2c',
      scrollBehavior: const ScrollBehavior(
          androidOverscrollIndicator: AndroidOverscrollIndicator.stretch),
      theme: ThemeColors().lightTheme,
      darkTheme: ThemeColors().darkTheme,
      themeMode: ThemeService().getThemeMode(),
      home: const Splashscreen(),
    );
  }
}
