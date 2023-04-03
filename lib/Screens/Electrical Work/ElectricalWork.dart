import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'dart:ui' as ui;
import '../../stylee/CommonSize.dart';
import '../../stylee/CommonTextStyle.dart';
import '../../stylee/common Color.dart';
import '../../widgets/divider.dart';

class ElectricalWork extends StatefulWidget {
  const ElectricalWork({Key? key}) : super(key: key);

  @override
  State<ElectricalWork> createState() => _ElectricalWorkState();
}

class _ElectricalWorkState extends State<ElectricalWork> {
  int page = 1, dateSelected = 0;
  List data = [
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25 Per Job 1 Hour/Visit',
      'img': 'Assets/Dubai.png',
      'id': 1
    },
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25 Per Job 1 Hour/Visit',
      'img': 'Assets/Image1.png',
      'id': 2
    },
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25 Per Job 1 Hour/Visit',
      'img': 'Assets/Image2.png',
      'id': 3
    },
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25 Per Job 1 Hour/Visit',
      'img': 'Assets/Image3.png',
      'id': 4
    },
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25 Per Job 1 Hour/Visit',
      'img': 'Assets/Dubai.png',
      'id': 5
    },
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25 Per Job 1 Hour/Visit',
      'img': 'Assets/Image4.png',
      'id': 6
    },
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25 Per Job 1 Hour/Visit',
      'img': 'Assets/Image1.png',
      'id': 7
    },
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25 Per Job 1 Hour/Visit',
      'img': 'Assets/Image2.png',
      'id': 8
    },
  ];
  List<dynamic> dataTable = [
    {"id": 0, "title": "Wire & network Extension", "Estimation": "10-50"},
    {
      "id": 0,
      "title": "Panel board & Boxes & Cutters",
      "Estimation": "100-120"
    },
    {"id": 0, "title": "Lighting & Accessories", "Estimation": "12-15"},
    {"id": 0, "title": "Switches & Stickers & Plugs", "Estimation": "16-12"},
    {"id": 0, "title": "Moving Electrical Appliances", "Estimation": "10-12"}
  ];

  @override
  void initState() {
    super.initState();
  }

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              child: Icon(Icons.edit,
                                  size: 15, color: Colors.white),
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
      ),
    );
  }

  Widget step1() {
    return StatefulBuilder(builder: (context, setState) {
      return SizedBox(
        height: displayHeight(context) * 0.72,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 15.0, right: 8.0),
                child: Image.asset('Assets/img3.png', height: 20, width: 20),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Electrical Work',
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
            height: displayHeight(context) * 0.61,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: displayHeight(context) * 0.12,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        color: Colors.grey.shade100,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SizedBox(
                                    height: displayHeight(context) * 0.11,
                                    width: displayWidth(context) * 0.25,
                                    child: Image.asset(
                                      data[index]['img'],
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, top: 6.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(data[index]['title'],
                                      style: cardCardHeader),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6.0),
                                    child: Text(
                                      data[index]['subtitle'],
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: displayWidth(context) * 0.60,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              setState(() => {
                                                    data[index]['count'] =
                                                        data[index]['count'] -
                                                            1,
                                                  });
                                            },
                                            icon: const Icon(Icons.remove,
                                                size: 14)),
                                        Text(
                                            data[index]['count'] <= 0
                                                ? 'ADD'
                                                : data[index]['count']
                                                    .toString(),
                                            style: add1),
                                        IconButton(
                                            onPressed: () {
                                              setState(() => {
                                                    data[index]['count'] =
                                                        data[index]['count'] +
                                                            1,
                                                  });
                                            },
                                            icon: const Icon(Icons.add,
                                                size: 14)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ]),
      );
    });
  }

  Widget step1Button() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
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
                onPressed: () {
                  setState(() {
                    page = 2;
                  });
                },
                icon: const Icon(Icons.arrow_back_ios_rounded),
                label: const Text('Proceed')),
          )
        ],
      ),
    );
  }

  Widget step2() {
    return SizedBox(
      height: displayHeight(context) * 0.73,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 35.0, right: 8.0),
              child: Text(
                'Electrical Work',
                style: primaryHeader,
              ),
            ),
            dividerWidget(Colors.grey.shade300),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.calendar_month, color: primary),
                const SizedBox(width: 15),
                Text('What date would like your services ?', style: styleFont),
              ],
            ),
            dividerWidget(primary.withOpacity(0.25)),
            SizedBox(
                height: displayHeight(context) * 0.10,
                width: displayHeight(context) * 0.98,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 30,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          DateTime now = DateTime.now();
                          return SizedBox(
                            width: 80,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: InkWell(
                                onTap: () => {
                                  setState(() {
                                    dateSelected = index;
                                  })
                                },
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    elevation: 0,
                                    color: index == dateSelected
                                        ? primary.withOpacity(0.15)
                                        : Colors.grey.shade200,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(DateFormat('E').format(
                                              now.add(Duration(days: index)))),
                                          dividerWidget(primary),
                                          Text(DateFormat('dd').format(
                                              now.add(Duration(days: index)))),
                                        ],
                                      ),
                                    )),
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.timer_outlined, color: primary),
                  const SizedBox(width: 15),
                  Text('What time would like your services ?',
                      style: styleFont),
                ],
              ),
            ),
            dividerWidget(primary.withOpacity(0.25)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.timer_outlined, color: primary),
                  const SizedBox(width: 15),
                  Text('Where would you like your services ?',
                      style: styleFont),
                ],
              ),
            ),
            dividerWidget(primary.withOpacity(0.25)),
            SizedBox(
              height: displayHeight(context) * 0.15,
              width: double.infinity,
              child: Card(
                  elevation: 0,
                  color: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: displayWidth(context) * 0.70,
                          height: displayHeight(context) * 0.08,
                          child: const Text(
                            'NanoSoft,P.O.Box :40072,E1-102,AFZA U.A.E Ajman,United Arab Emirates.',
                            style: TextStyle(
                                fontSize: 11, overflow: TextOverflow.clip),
                          ),
                        ),
                        const Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Change',
                              style: primaryHeader,
                            )),
                      ],
                    ),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Center(
                  child: Text('Book And Cancellation Terms', style: moreText)),
            )
          ],
        ),
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
              onPressed: () {
                setState(() {
                  page = 3;
                });
              },
              icon: const Icon(Icons.arrow_back_ios_rounded),
              label: const Text('Proceed')),
        ),
      ],
    );
  }

  Widget step3() {
    return StatefulBuilder(builder: (context, setState) {
      return SizedBox(
        height: displayHeight(context) * 0.72,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(children: [
            dividerWidget(Colors.grey.shade300),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: displayHeight(context) * 0.03,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: displayWidth(context) * 0.06,
                          height: displayHeight(context) * 0.06,
                          child: Lottie.asset(
                            height: 200,
                            'Assets/json/offer.json',
                            repeat: true,
                            reverse: true,
                            animate: true,
                          ),
                          // Image.asset("Assets/offer.png")
                        ),
                        const Text(
                          "Apply Discount",
                          style: electCardHead,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios, size: 16))
                      ],
                    ),
                  ),
                )
              ],
            ),
            dividerWidget(Colors.grey.shade300),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.top,
                columnWidths: const {
                  0: FlexColumnWidth(6),
                  1: FlexColumnWidth(3),
                  2: FlexColumnWidth(3),
                },
                children: [
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Image.asset(
                          "Assets/img3.png",
                          height: 20,
                          width: 20,
                        ),
                        const Text(
                          "Electrical Services",
                          style: electCardHead,
                        ),
                      ]),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "No.of Jobs",
                        style: electCardHead,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Estimations",
                        style: electCardHead,
                      ),
                    )
                  ]),
                  for (var val in dataTable)
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          val["title"],
                          style: electCardSubHead,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.04, color: primary)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Icon(
                                  Icons.remove,
                                  size: 14,
                                ),
                                Text("Add", style: add1),
                                const Icon(
                                  Icons.add,
                                  size: 14,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(val["Estimation"], style: electCardSubHead),
                      )
                    ]),
                ],
              ),
            ),
            dividerWidget(Colors.grey.shade300),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Total Estimation", style: electCardHead),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "QAR 148 - 209",
                    style: electCardHead,
                  ),
                )
              ],
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
                                    '  Will be Charged as a Standard Callout fee.for the Visit This Will not be charged if you confirm order with us...',
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
                      size: 63,
                      color: Colors.grey.shade400,
                    )),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.check_box_outlined,
                              size: 13,
                              color: positiveText,
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
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text("Change", style: primaryHeader),
                  )
                ],
              ),
            ),
            dividerWidget(Colors.grey.shade300),
          ]),
        ),
      );
    });
  }

  Widget step3Button() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
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
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  page = 1;
                });
              },
              child: const Text('Book your service')),
        ),
      ],
    );
  }
}
