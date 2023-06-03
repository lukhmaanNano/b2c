import 'package:b2c/Login/OTP_Screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../styles/common Color.dart';
import '../widgets/buttons.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController controller = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: 'IN');

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle text1 = TextStyle(
      color: Colors.grey,
      fontSize: 13,
    );
    return Scaffold(
        backgroundColor: Colors.white,
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
                      child: Image.asset("Assets/clientlogo.png"),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            // IntlPhoneField(
                            //     decoration: InputDecoration(
                            //       labelText: "Enter Your Mobile Number",
                            //       // counter: const Offstage(),
                            //       border: OutlineInputBorder(
                            //         borderSide: BorderSide(
                            //             width: 0.1,
                            //             color: Colors.grey.shade300),
                            //       ),
                            //       prefixStyle: const TextStyle(
                            //         fontSize: 16,
                            //         fontWeight: FontWeight.bold,
                            //       ),
                            //     ),
                            //     initialCountryCode: 'QA',
                            //     dropdownIconPosition: IconPosition.trailing,
                            //     dropdownIcon:
                            //         const Icon(Icons.expand_more_outlined),
                            //     dropdownDecoration: BoxDecoration(
                            //         borderRadius: BorderRadius.circular(8),
                            //         color: Colors.grey.shade200),
                            //     flagsButtonMargin:
                            //         const EdgeInsets.only(left: 1, right: 4)),
                            InternationalPhoneNumberInput(
                              textFieldController: controller,
                              onInputChanged: (PhoneNumber number) {},
                              onInputValidated: (bool value) {},
                              selectorConfig: const SelectorConfig(
                                selectorType:
                                    PhoneInputSelectorType.BOTTOM_SHEET,
                              ),
                              autoValidateMode:
                                  AutovalidateMode.onUserInteraction,
                              ignoreBlank: false,
                              hintText: 'Enter Your Mobile Number',
                              // autoValidateMode: AutovalidateMode.disabled,
                              selectorTextStyle:
                                  const TextStyle(color: Colors.black),
                              initialValue: number,
                              formatInput: true,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      signed: true, decimal: true),
                              inputBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade200),
                              ),
                              onSaved: (PhoneNumber number) {},
                            ),
                            const SizedBox(height: 30),
                            SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: buttonContainer(
                                  "Login/Sign up", const OtpScreen(), primary),
                            ),
                            const SizedBox(height: 20),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: primary,
                                    )),
                                child: const Center(
                                    child: Text(
                                  "Continue without account",
                                  style: TextStyle(color: Colors.grey),
                                )),
                              ),
                            ),
                            // const Padding(
                            //   padding: EdgeInsets.symmetric(vertical: 15.0),
                            //   child: SizedBox(
                            //       height: 24,
                            //       child: Text("-OR-", style: text1)),
                            // ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //   children: [
                            //     Container(
                            //       width: 160,
                            //       height: 40,
                            //       decoration: BoxDecoration(
                            //           borderRadius: BorderRadius.circular(20),
                            //           border: Border.all(color: Colors.grey)),
                            //       child: Row(
                            //         mainAxisAlignment:
                            //             MainAxisAlignment.spaceAround,
                            //         children: [
                            //           Image.asset(
                            //             "Assets/fb.png",
                            //             width: 20,
                            //             height: 20,
                            //           ),
                            //           const Text("Sign In With Facebook",
                            //               style: TextStyle(
                            //                 fontSize: 12,
                            //                 fontWeight: FontWeight.w400,
                            //               )),
                            //         ],
                            //       ),
                            //     ),
                            //     const SizedBox(width: 5),
                            //     Container(
                            //       width: 160,
                            //        40,
                            //       decoration: BoxDecoration(
                            //           borderRadius: BorderRadius.circular(20),
                            //           border: Border.all(color: Colors.grey)),
                            //       child: Row(
                            //         mainAxisAlignment:
                            //             MainAxisAlignment.spaceAround,
                            //         children: [
                            //           Image.asset(
                            //             "Assets/google.png",
                            //             width: 20,
                            //             height: 20,
                            //           ),
                            //           const Text(
                            //             "Sign In With Google",
                            //             style: TextStyle(
                            //               fontSize: 12,
                            //               fontWeight: FontWeight.w400,
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     )
                            //   ],
                            // ),
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
          height: 200,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Select Language",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
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
