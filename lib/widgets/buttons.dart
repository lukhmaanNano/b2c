import 'package:b2c/stylee/common%20Color.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../Login/OTP_Screen.dart';

Builder buttons(String val, routeScreen) {
  return Builder(builder: (context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            PageTransition(
                ctx: context,
                inheritTheme: true,
                type: PageTransitionType.fade,
                child: routeScreen));
      },
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color>(primary),
      ),
      child: Text(val),
    );
  });
}
