import 'package:b2c/styles/common%20Color.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

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

Builder buttonContainer(String val, routeScreen, Color) {
  return Builder(builder: (context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                ctx: context,
                inheritTheme: true,
                type: PageTransitionType.fade,
                child: routeScreen));
      },
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Color,
            border: Border.all(
              color: primary,
            )),
        child: Center(
            child: Text(
          val,
          style: const TextStyle(color: Colors.white),
        )),
      ),
    );
  });
}
