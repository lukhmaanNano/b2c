import 'package:b2c/styles/common%20Color.dart';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import '../../styles/CommonSize.dart';
import '../../styles/CommonTextStyle.dart';
import '../../widgets/divider.dart';

class PlumbingMain extends StatefulWidget {
  const PlumbingMain({Key? key}) : super(key: key);

  @override
  State<PlumbingMain> createState() => _PlumbingMainState();
}

class _PlumbingMainState extends State<PlumbingMain> {
  int page = 1;
  bool checkBox = true;
  List data = [
    {"id": 1, "title": "Blocks & Leakages"},
    {"id": 2, "title": "Mixers and Tapes"},
    {"id": 3, "title": "Water Heater"},
    {"id": 4, "title": "Pipelines"},
    {"id": 5, "title": "Sanitary Works"},
  ];

  void stepper() {}
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
            Navigator.of(context).pop();
          },
        ),
        title: Text(page == 1
            ? 'Select Services'
            : page == 2
                ? 'Schedule Your Electrical Services'
                : 'Order Summary'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.search, color: Colors.white),
          )
        ],
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: displayWidth(context) * 0.78,
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: primary,
                            radius: 15,
                            child:
                                Icon(Icons.edit, size: 15, color: Colors.white),
                          ),
                          SizedBox(
                              width: displayWidth(context) * 0.25,
                              child: Divider(
                                  indent: 10,
                                  endIndent: 10,
                                  color: page == 1
                                      ? Colors.grey.shade200
                                      : page == 2
                                          ? primary
                                          : primary,
                                  thickness: 0.8)),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: page == 2
                                ? primary
                                : page == 3
                                    ? primary
                                    : Colors.grey.shade200,
                            child: Icon(Icons.hourglass_full_rounded,
                                size: 15,
                                color: page == 2
                                    ? Colors.white
                                    : page == 3
                                        ? Colors.white
                                        : primary),
                          ),
                          SizedBox(
                              width: displayWidth(context) * 0.25,
                              child: Divider(
                                  indent: 10,
                                  endIndent: 10,
                                  color: page == 3
                                      ? primary
                                      : Colors.grey.shade200,
                                  thickness: 0.8)),
                          CircleAvatar(
                            backgroundColor:
                                page == 3 ? primary : Colors.grey.shade200,
                            radius: 15,
                            child: Icon(Icons.thumb_up_rounded,
                                size: 15,
                                color: page == 3 ? Colors.white : primary),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text('Select Service', style: commonRoboto),
                        SizedBox(width: displayWidth(context) * 0.16),
                        Text('Schedule', style: commonRoboto),
                        SizedBox(width: displayWidth(context) * 0.24),
                        Text('Confirm', style: commonRoboto)
                      ],
                    )
                  ],
                ),
              ),
            ),
            page == 1
                ? step1()
                : page == 2
                    ? step2()
                    : step3(),
            page == 1
                ? step1Button()
                : page == 2
                    ? step2Button()
                    : step3Button()
          ],
        ),
      ),
    );
  }

  Widget step1() {
    return StatefulBuilder(builder: (context, setState) {
      return SizedBox(
        height: displayHeight(context) * 0.72,
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 15.0, right: 8.0),
                  child: Image.asset('Assets/img1.png', height: 20, width: 20),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Plumbing Work',
                    style: primaryHeader,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Available Service (10)', style: serviceCount),
                )
              ],
            ),
            dividerWidget(Colors.grey.shade300),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 15.0),
              child: Text('Choose your services', style: styleFont),
            ),
            SizedBox(
              height: displayHeight(context) * 0.40,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 20,
                        child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            value: checkBox,
                            onChanged: (value) {
                              setState(() {
                                checkBox = !checkBox;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 20,
                        child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            value: checkBox,
                            onChanged: (value) {
                              setState(() {
                                checkBox = !checkBox;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 20,
                        child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            value: checkBox,
                            onChanged: (value) {
                              setState(() {
                                checkBox = !checkBox;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 20,
                        child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            value: checkBox,
                            onChanged: (value) {
                              setState(() {
                                checkBox = !checkBox;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 20,
                        child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            value: checkBox,
                            onChanged: (value) {
                              setState(() {
                                checkBox = !checkBox;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 20,
                        child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            value: checkBox,
                            onChanged: (value) {
                              setState(() {
                                checkBox = !checkBox;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 20,
                        child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            value: checkBox,
                            onChanged: (value) {
                              setState(() {
                                checkBox = !checkBox;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 20,
                        child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            value: checkBox,
                            onChanged: (value) {
                              setState(() {
                                checkBox = !checkBox;
                              });
                            }),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Blocks & Leakages', style: serviceCount),
                      Text('Mixers and Tapes', style: serviceCount),
                      Text('Water and Heater', style: serviceCount),
                      Text('Pipelines', style: serviceCount),
                      Text('Water Pumps', style: serviceCount),
                      Text('Basins and Sinks', style: serviceCount),
                      Text('Sanitary Works', style: serviceCount),
                      Text('Other Plumbing Works', style: serviceCount),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text('Please add any specific instructions'),
            ),
            SizedBox(
              height: displayHeight(context) * 0.15,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: displayWidth(context) * 0.80,
                      child: TextFormField(
                        minLines: 4,
                        maxLines: 6,
                        cursorColor: primary,
                        decoration: inputBox('180 Charecters'),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.image_rounded, color: primary),
                        Icon(Icons.photo_camera_rounded, color: primary)
                      ],
                    )
                  ],
                ),
              ),
            ),
            // SizedBox(height: displayHeight(context) * 0.05),
          ]),
        ),
      );
    });
  }

  Widget step1Button() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Price will be decided post inspection', style: tips),
          Directionality(
            textDirection: TextDirection.rtl,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 45),
                  maximumSize: const Size(180, 45),
                ),
                onPressed: () {
                  setState(() {
                    page = 2;
                  });
                },
                icon: const Icon(Icons.arrow_back_ios_rounded),
                label: const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text('Proceed'),
                )),
          )
        ],
      ),
    );
  }

  Widget step2() {
    return SizedBox(
      height: displayHeight(context) * 0.72,
      child: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              setState(() {
                page = 1;
              });
            },
            icon: const Icon(Icons.arrow_back_ios_rounded),
            label: const Text('back')),
      ),
    );
  }

  Widget step2Button() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // ElevatedButton.icon(
        //     onPressed: () {
        //       setState(() {
        //         page = 1;
        //       });
        //     },
        //     icon: const Icon(Icons.arrow_back_ios_rounded),
        //     label: const Text('back')),
        // const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Estimated Bill', style: tips),
            Text("QAR 148 -209", style: add),
            const Text('Material Not Included', style: tips),
          ],
        ),
        Directionality(
          textDirection: ui.TextDirection.rtl,
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(180, 45),
                maximumSize: const Size(180, 45),
              ),
              onPressed: () {
                setState(() {
                  page = 3;
                });
              },
              icon: const Icon(Icons.arrow_back_ios_rounded),
              label: const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text('Proceed'),
              )),
        ),
      ],
    );
  }

  Widget step3() {
    return SizedBox(
      height: displayHeight(context) * 0.72,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 15.0, right: 8.0),
                  child: Image.asset('Assets/img1.png', height: 20, width: 20),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Plumbing Work',
                    style: primaryHeader,
                  ),
                ),
              ],
            ),
            dividerWidget(Colors.grey.shade300),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 0),
                        spreadRadius: -11,
                        blurRadius: 11,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text("Added Service", style: styleFont),
                    ),
                    SizedBox(
                      height: displayWidth(context) * 0.52,
                      child: ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: displayWidth(context) * 0.1,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: SizedBox(
                                      height: 20,
                                      child: Checkbox(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          value: checkBox,
                                          onChanged: (value) {
                                            setState(() {
                                              checkBox = !checkBox;
                                            });
                                          }),
                                    ),
                                  ),
                                  Text(data[index]["title"],
                                      style: serviceCount)
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Card(
                elevation: 0,
                color: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                  child: SizedBox(
                    height: displayHeight(context) * 0.06,
                    width: displayWidth(context) * 0.91,
                    child: Center(
                      child: RichText(
                        text: const TextSpan(
                            text: 'AED 120',
                            style: electCardColour,
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    '  Will be Charged as a Standard Callout fee.for the Visit This Will not be charged if you confirm order with us',
                                style: electCard,
                              )
                            ]),
                      ),
                    ),
                  ),
                )),
            dividerWidget(Colors.grey.shade300),
            SizedBox(
              height: displayHeight(context) * 0.10,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                        child: Icon(
                      Icons.maps_home_work_outlined,
                      size: 60,
                      color: Colors.grey.shade400,
                    )),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.check_box_outlined,
                              size: 14,
                              color: Colors.green,
                            ),
                          ),
                          Text("Location Details", style: electCardHead)
                        ],
                      ),
                      const Text("Nanosoft,P.O.Box : 40072 E1-102,AFZA U.A.E",
                          style: electCard),
                      const Text(
                        "Doha-Qatar",
                        style: electCard,
                      ),
                      const Text(
                        "Scheduled : 13-Mar-21,11:00 AM",
                        style: electCardColour,
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 14.0),
                    child: Text("Change", style: primaryHeader),
                  )
                ],
              ),
            ),
            dividerWidget(Colors.grey.shade300),
          ],
        ),
      ),
    );
  }

  Widget step3Button() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Price Will be Decided', style: tips),
            Text('Post inspection', style: tips),
          ],
        ),
        Directionality(
          textDirection: ui.TextDirection.rtl,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(180, 45),
                maximumSize: const Size(180, 45),
              ),
              onPressed: () {
                setState(() {
                  page = 3;
                });
              },
              child: const Text('Book your Service')),
        ),
      ],
    );
  }
}
