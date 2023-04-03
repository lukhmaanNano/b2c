import 'package:b2c/splashscreen.dart';
import 'package:b2c/stylee/CommonTextStyle.dart';
import 'package:b2c/stylee/common%20Color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'b2c',
      scrollBehavior: const ScrollBehavior(
          androidOverscrollIndicator: AndroidOverscrollIndicator.stretch),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            toolbarHeight: 60,
            backgroundColor: primary,
            elevation: 0,
            titleTextStyle: appBar),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        primaryColor: primary,
        checkboxTheme: CheckboxThemeData(
          shape: const CircleBorder(),
          checkColor: MaterialStateProperty.all(Colors.white),
          fillColor: MaterialStateProperty.all(primary),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
          ),
        ),
        buttonTheme: const ButtonThemeData(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(primary),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
          ),
        ),
      ),
      home: const Splashscreen(),
    );
  }
}
