import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../stylee/CommonTextStyle.dart';
import '../stylee/common Color.dart';

class Development extends StatelessWidget {
  const Development({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0,
      backgroundColor: Colors.white.withOpacity(0.9),
      child: SizedBox(
        height: 300,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Page Under Development', style: develop1),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: red,
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Lottie.asset(
              height: 200,
              'Assets/json/develop.json',
              repeat: true,
              reverse: true,
              animate: true,
            ),
          ],
        ),
      ),
    );
  }
}
