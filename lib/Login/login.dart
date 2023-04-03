import 'package:b2c/Login/OTP_Screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../stylee/common Color.dart';
import '../widgets/buttons.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    const TextStyle text1 = TextStyle(
      color: Colors.grey,
      fontSize: 13,
    );

    return Scaffold(
        backgroundColor: primaryColor,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 300,
                      height: 150,
                      child: Image.asset("Assets/b2clogo.png"),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            IntlPhoneField(
                              decoration: const InputDecoration(
                                labelText: "Phone Number",
                                counter: Offstage(),
                                prefixStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              height: 40,
                              child:
                                  buttons("Login/Sign up", const OtpScreen()),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        width: 1.0,
                                        color: Colors.blueAccent.shade400),
                                  ),
                                  child: const Text(
                                    "Continue Without Account",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 15.0),
                              child: SizedBox(
                                  height: 24,
                                  child: Text("-OR-", style: text1)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 160,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.grey)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        "Assets/fb.png",
                                        width: 20,
                                        height: 20,
                                      ),
                                      const Text("Sign In With Facebook",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          )),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  width: 160,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.grey)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        "Assets/google.png",
                                        width: 20,
                                        height: 20,
                                      ),
                                      const Text(
                                        "Sign In With Google",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                    const SizedBox(height: 10),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 240.0,
                        minWidth: 100.0,
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                            "Assets/shape.png",
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width * 1.0,
                          ),
                          Positioned(
                              top: MediaQuery.of(context).size.width * 0.0,
                              left: MediaQuery.of(context).size.width * 0.34,
                              child: const Text(
                                "Select Your Language",
                                style: text1,
                              )),
                          Positioned(
                            top: MediaQuery.of(context).size.width * 0.05,
                            left: MediaQuery.of(context).size.width * 0.37,
                            child: InkWell(
                              onTap: () {
                                languageSheet(context);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                height:
                                    MediaQuery.of(context).size.height * 0.031,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: positiveText,
                                ),
                                child: const Center(
                                    child: Text(
                                  "English",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]));
  }
}

Future languageSheet(context) {
  const TextStyle commonLogin = TextStyle(
    fontSize: 14,
    color: Colors.black,
  );
  return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0))),
      context: context,
      builder: (context) {
        return SizedBox(
          height: 250,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Select Language",
                style: commonLogin,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('Assets/US.png'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "English",
                        style: TextStyle(
                          fontSize: 14,
                          color: primary,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('Assets/Dubai.png'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Arabic",
                        style: commonLogin,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      });
}
