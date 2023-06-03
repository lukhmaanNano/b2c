import 'package:b2c/dashboard.dart';
import 'package:b2c/home.dart';
import 'package:b2c/styles/CommonSize.dart';
import 'package:b2c/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:lottie/lottie.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/common Color.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "We have sent an OTP to your Mobile",
                    textAlign: TextAlign.center,
                    style: headingOtp,
                  ),
                )),
            const SizedBox(
              width: 350,
              child: Text(
                "Please check your mobile number 071********12 continue to login",
                textAlign: TextAlign.center,
                style: commonOtp,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: displayHeight(context) * 0.06,
              width: displayWidth(context) * 0.80,
              child: const Pinput(
                length: 6,
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: buttonContainer(
                  "Login", const HomeScreen(), primary),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                      text: "Resend in : ",
                      style: commonOtp,
                    ),
                    TextSpan(
                        text: "00:30",
                        style: TextStyle(
                            color: positiveText,
                            fontSize: 12,
                            fontWeight: FontWeight.w300))
                  ]),
                ),
                TextButton.icon(
                  onPressed: () {},
                  label: const Text(
                    "Change Mobile Number",
                    style: primaryHeader,
                  ),
                  icon: const Icon(size: 15, Icons.edit, color: primary),
                ),
              ],
            ),
             SizedBox(
              // height: displayHeight(context) * 1,
              child: Image.asset("Assets/OTPScreen.png"),
            ),
            // Lottie.asset(
            //   height: 200,
            //   'Assets/json/otp.json',
            //   repeat: true,
            //   reverse: true,
            //   animate: true,
            // ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "3 Steps Booking",
              style: headingOtp,
            ),
            const Text(
              "Booking a service in now easier then ever!",
              style: commonOtp,
            ),
            const SizedBox(
              height: 20,
            ),
            // Stack(
            //   children: [
            //     Align(
            //         alignment: Alignment.bottomRight,
            //         child: SizedBox(
            //             width: 180,
            //             height: 100,
            //             child: Image.asset("Assets/b2clogo.png")))
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
