import 'package:b2c/Services/subServiceApi.dart';
import 'package:b2c/Services/subSubServiceApi.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shimmer/shimmer.dart';
import 'dart:ui' as ui;
import '../../Controller/loaderController.dart';
import '../../styles/CommonSize.dart';
import '../../styles/CommonTextStyle.dart';
import '../../styles/common Color.dart';
import '../../widgets/Shimmer.dart';
import '../../widgets/divider.dart';

class ElectricalWork extends StatefulWidget {
  int mainServiceIDPK;
   ElectricalWork({Key? key,required this.mainServiceIDPK} ) : super(key: key);

  @override
  State<ElectricalWork> createState() => _ElectricalWorkState();
}

class _ElectricalWorkState extends State<ElectricalWork> {

  final LoaderController loaderController = Get.put(LoaderController());
  final SubServiceApi _subServiceApi = Get.find<SubServiceApi>();
  final SubSubServiceApi _subSubServiceApi = Get.find<SubSubServiceApi>();

  ScrollController _controller = ScrollController();
  ScrollController scrollServiceController = ScrollController();

  int page = 1, dateSelected = 0;
  
  List data = [
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25',
      'subtitle1': 'Per Job 1 Hour/Visit',
      'img': 'Assets/Dubai.png',
      'id': 1
    },
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25 ',
      'subtitle1': 'Per Job 1 Hour/Visit',
      'img': 'Assets/Image1.png',
      'id': 2
    },
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25 ',
      'subtitle1': 'Per Job 1 Hour/Visit',
      'img': 'Assets/Image2.png',
      'id': 3
    },
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25 ',
      'subtitle1': 'Per Job 1 Hour/Visit',
      'img': 'Assets/Image3.png',
      'id': 4
    },
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25 ',
      'subtitle1': 'Per Job 1 Hour/Visit',
      'img': 'Assets/Dubai.png',
      'id': 5
    },
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25',
      'subtitle1': 'Per Job 1 Hour/Visit',
      'img': 'Assets/Image4.png',
      'id': 6
    },
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25 ',
      'subtitle1': 'Per Job 1 Hour/Visit',
      'img': 'Assets/Image1.png',
      'id': 7
    },
    {
      'count': 0,
      'title': 'Wire & Network Extension',
      'subtitle': 'QAR 25 ',
      'subtitle1': 'Per Job 1 Hour/Visit',
      'img': 'Assets/Image2.png',
      'id': 8
    },
  ];

  List tileData = [
    {
      'count': 0,
      'heading': 'Running new electrical wiring or network cables',
      'title' : 'QAR 25 - 56',
      'subtitle': 'Per Job 1 Hour/Visit',
      'img': 'Assets/Dubai.png',
      'id': 1
    },
    {
      'count': 0,
      'heading': 'Running new electrical wiring or network cables',
      'title' : 'QAR 25 - 56',
      'subtitle': 'Per Job 1 Hour/Visit',
      'img': 'Assets/Dubai.png',
      'id': 2
    },
  ];

  List faqData = [
    {'id' : '1','title' : 'What types of flooring can you clean?','subtitle' : 'We can clean all types of flooring, including hardwood, tile, and carpet.'},
    {'id' : '2','title' : 'Do I need to move furniture before you arrive?','subtitle' : 'We can clean all types of flooring, including hardwood, tile, and carpet.'},
    {'id' : '3','title' : 'What cleaning products do you use?','subtitle' : 'We can clean all types of flooring, including hardwood, tile, and carpet.'},
    {'id' : '4','title' : 'Do you offer any guarantees on your services?','subtitle' : 'We can clean all types of flooring, including hardwood, tile, and carpet.'},
    {'id' : '5','title' : 'Will you repair any damages caused during cleaning?','subtitle' : 'We can clean all types of flooring, including hardwood, tile, and carpet.'},
    {'id' : '6','title' : 'Can you remove tough stains or deep grime?','subtitle' : 'We can clean all types of flooring, including hardwood, tile, and carpet.'},
    {'id' : '7','title' : 'Do you offer a recurring cleaning service?','subtitle' : 'We can clean all types of flooring, including hardwood, tile, and carpet.'},
    {'id' : '8','title' : 'How do I schedule an appointment for floor cleaning?','subtitle' : 'We can clean all types of flooring, including hardwood, tile, and carpet.'},
    {'id' : '9','title' : 'What payment options do you accept?','subtitle' : 'We can clean all types of flooring, including hardwood, tile, and carpet.'},
    {'id' : '10','title' : 'Do I need to move furniture before you arrive?','subtitle' : 'We can clean all types of flooring, including hardwood, tile, and carpet.'},
  ];
  List feedbackData = [
    {'id' : '1','heading' : 'Matt Murdock','subtitle' : 'I recently had my floors cleaned through this service app and I am thrilled with the results! The team arrived on time, was professional, and left my floors looking brand new.'},
    {'id' : '2','heading' : 'Matt Murdock','subtitle' : 'I recently had my floors cleaned through this service app and I am thrilled with the results! The team arrived on time, was professional, and left my floors looking brand new.'},
    {'id' : '3','heading' : 'Matt Murdock','subtitle' : 'I recently had my floors cleaned through this service app and I am thrilled with the results! The team arrived on time, was professional, and left my floors looking brand new.'},
    {'id' : '4','heading' : 'Matt Murdock','subtitle' : 'I recently had my floors cleaned through this service app and I am thrilled with the results! The team arrived on time, was professional, and left my floors looking brand new.'},
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

  bool _isExpanded = false;


  @override
  void initState() {
    super.initState();
    loaderController.loaderFunc();
    // _subSubServiceApi.subSubServiceApi(context,subServiceID, subSubServiceID);
    // _subServiceApi.subServiceApi(context,widget.mainServiceIDPK);
     print(_subSubServiceApi.subSubServiceData);
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
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: displayHeight(context) * 0.11,
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
    );
  }

  Widget step1() {
    // final subServiceData = _subServiceApi.subServiceData[0];
    return StatefulBuilder(builder: (context, setState) {
      return Obx(
          () => Expanded(
            child: SingleChildScrollView(
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Stack(
                    children: [
                      SizedBox(
                          width: double.infinity,
                          height: displayHeight(context) * 0.15,
                          child: Image.asset('Assets/elecBanner.png',fit: BoxFit.cover,)
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: displayHeight(context) * 0.15,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if(_subServiceApi.subServiceData.isNotEmpty)
                              Text( '${_subServiceApi.subServiceData[0]['BTCMainServServiceName']} (${_subServiceApi.subServiceData[0]['TotalCount']}) '?? '',style: bannerTxt,),
                              Text(' "Expert electrical works by \n licensed professionals" ',style: bannerSubTxt,)
                            ],
                          ),
                        ),
                      )
                    ]

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Choose your services', style: heading),
                ),
                SizedBox(
                  // height: displayHeight(context) * 0.47,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    _subServiceApi.subServiceData.isEmpty ? shimmer(displayHeight(context) * 0.47) :
                    ListView.builder(
                      controller: scrollServiceController,
                        shrinkWrap: true,
                        itemCount: _subServiceApi.subServiceData.length,
                        itemBuilder: (BuildContext context, int index) {
                          final subServiceData = _subServiceApi.subServiceData[index];
                          return Column(
                            children: [
                              InkWell(
                                onTap:(){
                             _subSubServiceApi.subSubServiceApi(context,_subServiceApi.subServiceData[index]['BTCSubServiceIDPK']);
                             print('Start');
                             bottomSheet1(context,
                                   _subSubServiceApi.subSubServiceData[index]['BTCSubServiceSubservice'],
                                   _subSubServiceApi.subSubServiceData[index]['BTCSubEstMin'],
                                   _subSubServiceApi.subSubServiceData[index]['BTCSubEstMax'],
                               );
                               print('End');
                              },
                                child: SizedBox(
                                  height: displayHeight(context) * 0.12,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12.0, top: 6.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(subServiceData['BTCSubServiceSubservice'] ?? '' ,
                                                style: btmSheetHeadLight),
                                            Row(
                                              children: [
                                                RatingBar.builder(
                                                  itemSize: 20,
                                                  initialRating: 3,
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: true,
                                                  itemCount: 5,
                                                  itemPadding: const EdgeInsets.symmetric(
                                                      horizontal: 4.0),
                                                  itemBuilder: (context, _) =>
                                                  const Icon(
                                                    Icons.star,
                                                    color: Color(0xffFFAD5A),
                                                  ),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  },
                                                ),
                                                Text("4.0 (34.7K)",style: subTitleLight,),
                                              ],
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text: '${subServiceData['BTCSubEstMin']} - ${subServiceData['BTCSubEstMax']}  AED' ?? '',
                                                style: btmSheetHeadLight,
                                                children: <TextSpan>[
                                                  TextSpan(text: '  Per Job 1 Hour/Visit', style: subTitleLight),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 5.0),
                                        child: SizedBox(
                                          width: 100,
                                          height: displayHeight(context) * 0.13,
                                          child:
                                              Stack(clipBehavior: Clip.none, children: [
                                            Container(
                                              decoration:BoxDecoration(
                                              border: Border.all(width: 1,color:primary,),
                                                borderRadius: BorderRadius.circular(8.0),
                                              ),
                                              height: displayHeight(context) * 0.08,
                                              width: displayWidth(context) * 0.24,
                                              child: Obx(() =>
                                                  loaderController.loader.value == true
                                                      ? shimmer(
                                                          double.infinity,
                                                        )
                                                      : ClipRRect(
                                                        borderRadius: BorderRadius.circular(8.0),
                                                        child: subServiceData['FilePath'] == null ?
                                                         const Center(child: Icon(Icons.hide_image_rounded,color: primary,)):
                                                         Image.network(
                                                           subServiceData['FilePath'] ,
                                                           fit: BoxFit.fill,
                                                         ),
                                                      )),
                                            ),
                                            Positioned(
                                              bottom: -5,
                                              child: Card(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceAround,
                                                    children: [
                                                      InkWell(
                                                        onTap: () => {
                                                          setState(() => {
                                                                data[index]['count'] =
                                                                    data[index]['count'] -
                                                                        1,
                                                              })
                                                        },
                                                        child: const Icon(
                                                          Icons.remove,
                                                          size: 20,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.symmetric(
                                                                horizontal: 4.0),
                                                        child: SizedBox(
                                                          width: displayWidth(context) *
                                                              0.06,
                                                          child: Text(
                                                              data[index]['count'] <= 0
                                                                  ? 'ADD'
                                                                  : data[index]['count']
                                                                      .toString(),
                                                              textAlign: TextAlign.center,
                                                              style: add1),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () => {
                                                          setState(() => {
                                                                data[index]['count'] =
                                                                    data[index]['count'] +
                                                                        1,
                                                              })
                                                        },
                                                        child: const Icon(
                                                          Icons.add,
                                                          size: 20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              dividerWidget(Colors.grey.shade300),
                            ],
                          );
                        }),
                  ),
                )

              ]),
            ),
          ),
      );
    });
  }

  Widget step1Button() {
    return Container(
      width: double.infinity,
       height: displayHeight(context) * 0.11,
      decoration: commonShadow,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text('Estimated Bill', style: commonBill1),
                Text("QAR 148 -209", style: commonBill2),
                 Text('Material Not Included', style: commonBill1),
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
      ),
    );
  }

  Widget step2() {
    return SizedBox(
      height: displayHeight(context) * 0.72,
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ),
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 45),
                  maximumSize: const Size(180, 45),
                ),
                onPressed: () {
                  setState(() {
                    page = 1;
                  });
                },
                child: Text('Book your service')),
          ),
        ],
      ),
    );
  }

  Future bottomSheet1(context,String? subServiceName,String? subServiceMinCost,String? subServiceMaxCost) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0))),
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, void Function(void Function()) setState) {
            return  Obx(
                  ()=> Stack(clipBehavior: Clip.none, children: [
                    _subSubServiceApi.subSubServiceData.isNotEmpty ?
                    SizedBox(
                  height: displayHeight(context) * 0.75,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          controller: _controller,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(40.0),
                                    topRight: Radius.circular(40.0)),
                                child: SizedBox(
                                  height: displayHeight(context) * 0.25,
                                  width: double.infinity,
                                  child: Image.asset("Assets/Image1.png",fit:BoxFit.fill,),
                                ),
                              ),
                               Padding(
                                padding: EdgeInsets.all(16.0),
                                child:
                                Text( subServiceName ?? '',
                                    style: cardTitle),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Row(
                                  children: [
                                    const Icon(Icons.star,color: Color(0xffFFAD5A),),
                                    Text("4.0 (34.7K)",style: subTitleLight,),
                                  ],
                                ),
                              ),
                              Divider(
                                  indent: 10,
                                  endIndent: 10,
                                  thickness: 0.3,
                                  color: Colors.grey.shade300),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text("Services",style: btmSheetHeadLight,),
                              ),
                              ListView.builder(
                                controller: _controller,
                                itemCount: _subSubServiceApi.subSubServiceData.length,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  final subSubServiceData = _subSubServiceApi.subSubServiceData[index];
                                  return ExpansionTile(
                                    trailing: Container(
                                      width: 100,
                                      height: 32,
                                      decoration: BoxDecoration(
                                          color: Get.isDarkMode ? primary : Colors.white,
                                          border: Border.all(
                                              width: 1,
                                              color: Get.isDarkMode
                                                  ? Colors.white
                                                  : Colors.grey.shade300),
                                          borderRadius:
                                          const BorderRadius.all(Radius.circular(8))),
                                      child: Center(
                                          child: Text(
                                            'Add',
                                            style:
                                            Get.isDarkMode ? secondaryDark : secondaryLight,
                                          )),
                                    ),
                                    onExpansionChanged: (value) {
                                      setState(() {
                                        _isExpanded = value;
                                      });
                                    },
                                    title: SizedBox(
                                      width: displayWidth(context) * 0.5,
                                      height: displayHeight(context) * 0.15,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            subSubServiceData['BTCSSServiceName'] ?? '',
                                            style: btmSheetTitleLight,),
                                          Row(
                                            children: [
                                              RatingBar.builder(
                                                itemSize: 25,
                                                initialRating: 3,
                                                minRating: 1,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                itemPadding: const EdgeInsets.symmetric(
                                                    horizontal: 4.0),
                                                itemBuilder: (context, _) =>
                                                const Icon(
                                                  Icons.star,
                                                  color: Color(0xffFFAD5A),
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                },
                                              ),
                                              Text("4.0 (34.7K)",style: subTitleLight,),
                                            ],
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              text: '${subSubServiceData['BTCSSEstminprice']} - ${subSubServiceData['BTCSSEstmaxprice']}  AED' ?? '',
                                              style: btmSheetHeadLight,
                                              children: <TextSpan>[
                                                TextSpan(text: '  Per Job 1 Hour/Visit', style: subTitleLight),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon( !_isExpanded ?  Icons.expand_more : Icons.expand_less,   color: primary,),
                                              Text('Service Details',style: expandLight,),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),

                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Text("Service Details",style: btmSheetHeadLight,),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              controller: _controller,
                                              itemCount: data.length,
                                              itemBuilder: (BuildContext context, int index) {
                                                final isRightAligned = index % 2 == 0;
                                                return Stack(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Align(
                                                        alignment : isRightAligned ? Alignment.topLeft : Alignment.topRight ,
                                                        child: Column(

                                                          children: [
                                                            SizedBox(
                                                                width :displayWidth(context) * 0.5,
                                                                height :displayHeight(context) * 0.1,
                                                                child: Center(child: Text(data[index]['title'],style: subTitleLight,))),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment : isRightAligned ? Alignment.topRight : Alignment.topLeft ,
                                                      child:  ClipRRect(
                                                          borderRadius : BorderRadius.circular(10),
                                                          child: Container(
                                                            width :displayWidth(context) * 0.3,
                                                            height :displayHeight(context) * 0.1,
                                                            decoration : const BoxDecoration(
                                                                boxShadow: [ BoxShadow(
                                                                  offset: Offset(-30, 27),
                                                                  spreadRadius: -1,
                                                                  blurRadius: 37,
                                                                  color: Color.fromRGBO(201, 201, 201, 1),
                                                                )]
                                                            ),
                                                            child : Image.asset(
                                                              data[index]['img']
                                                              ,height: 350,width:350
                                                              ,fit: BoxFit.fill,),
                                                          )
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              },

                                            ),
                                          ),
                                        ],
                                      )

                                    ],
                                  );
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text("Frequently asked questions",style: btmSheetHeadLight,),
                              ),
                              ListView.builder(
                                  controller: _controller,
                                  itemCount: faqData.length,
                                  shrinkWrap: true,
                                  itemBuilder: (BuildContext context, int index) {
                                    return ExpansionTile(
                                      leading: !_isExpanded ?  const Icon(Icons.add_circle,color: primary,) : const Icon(Icons.remove_circle,color:primary),
                                      controlAffinity: ListTileControlAffinity.leading,
                                      title: Text(faqData[index]['title'],style: btmSheetTitleLight,),
                                      onExpansionChanged: (bool expand){
                                        setState((){
                                          _isExpanded = expand;
                                        });
                                      },
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 12.0),
                                          child: SizedBox(
                                              width: displayWidth(context) * 0.7,
                                              child: Text(faqData[index]['subtitle'],style: subTitleLight,)),
                                        )
                                      ],
                                    );
                                  } ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text("Customer Feedback",style: btmSheetHeadLight,),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          // width: displayWidth(context) * 0.25,
                                            height: displayHeight(context) * 0.1,
                                            child:  Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        const Icon(Icons.star,color: Color(0xffFFAD5A),size: 30,),
                                                        Text('4.47',style: btmSheetRateHeadLight,),
                                                      ]
                                                  ),
                                                  Text('767K reviews',style: btmSheetHeadLight)
                                                ]
                                            )
                                        )
                                      ],
                                    ),
                                    VerticalDivider(
                                        indent: 10,
                                        endIndent: 10,
                                        thickness: 1,
                                        color: Colors.grey.shade300),
                                    Column(
                                      children: [
                                        SizedBox(
                                          // width: displayWidth(context) * 0.1,
                                          height: displayHeight(context) * 0.15,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              LinearPercentIndicator(
                                                width: displayWidth(context) * 0.3,
                                                animation: true,
                                                animationDuration: 1000,
                                                lineHeight: 15.0,
                                                leading: Row(
                                                    children: [
                                                      Icon(Icons.star,color: Color(0xffFFAD5A),size: 20,),
                                                      Text('1',style: btmSheetHeadLight,)
                                                    ]
                                                ),
                                                trailing:  Text("234K",style: subTitleLight,),
                                                percent: 0.8,
                                                linearStrokeCap: LinearStrokeCap.roundAll,
                                                progressColor: primary,
                                              ),
                                              LinearPercentIndicator(
                                                width: displayWidth(context) * 0.3,
                                                animation: true,
                                                animationDuration: 1000,
                                                lineHeight: 15.0,
                                                leading: Row(
                                                    children: [
                                                      Icon(Icons.star,color: Color(0xffFFAD5A),size: 20,),
                                                      Text('2',style: btmSheetHeadLight,)
                                                    ]
                                                ),
                                                trailing:  Text("234K",style: subTitleLight,),
                                                percent: 0.4,
                                                linearStrokeCap: LinearStrokeCap.roundAll,
                                                progressColor: primary,
                                              ),
                                              LinearPercentIndicator(
                                                width: displayWidth(context) * 0.3,
                                                animation: true,
                                                animationDuration: 1000,
                                                lineHeight: 15.0,
                                                leading: Row(
                                                    children: [
                                                      Icon(Icons.star,color: Color(0xffFFAD5A),size: 20,),
                                                      Text('3',style: btmSheetHeadLight,)
                                                    ]
                                                ),
                                                trailing:  Text("234K",style: subTitleLight,),
                                                percent: 0.6,
                                                linearStrokeCap: LinearStrokeCap.roundAll,
                                                progressColor: primary,
                                              ),
                                              LinearPercentIndicator(
                                                width: displayWidth(context) * 0.3,
                                                animation: true,
                                                animationDuration: 1000,
                                                lineHeight: 15.0,
                                                leading: Row(
                                                    children: [
                                                      Icon(Icons.star,color: Color(0xffFFAD5A),size: 20,),
                                                      Text('4',style: btmSheetHeadLight,)
                                                    ]
                                                ),
                                                trailing:  Text("234K",style: subTitleLight,),
                                                percent: 0.4,
                                                linearStrokeCap: LinearStrokeCap.roundAll,
                                                progressColor: primary,
                                              ),
                                              LinearPercentIndicator(
                                                width: displayWidth(context) * 0.3,
                                                animation: true,
                                                animationDuration: 1000,
                                                lineHeight: 15.0,
                                                leading: Row(
                                                    children: [
                                                      Icon(Icons.star,color: Color(0xffFFAD5A),size: 20,),
                                                      Text('5',style: btmSheetHeadLight,)
                                                    ]
                                                ),
                                                trailing:  Text("234K",style: subTitleLight,),
                                                percent: 0.2,
                                                linearStrokeCap: LinearStrokeCap.roundAll,
                                                progressColor: primary,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Divider(
                                        indent: 10,
                                        endIndent: 10,
                                        thickness: 0.3,
                                        color: Colors.grey.shade300),
                                  ],
                                ),
                              ),
                              ListView.builder(
                                  controller: _controller,
                                  itemCount: feedbackData.length,
                                  shrinkWrap: true,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Column(
                                      children: [
                                        ListTile(
                                          leading: const CircleAvatar(
                                            backgroundColor: primary,
                                            radius: 30,
                                            child: CircleAvatar(
                                              radius: 25,
                                              backgroundImage: AssetImage("Assets/admin.png"),
                                            ),
                                          ),
                                          title: Text(feedbackData[index]['heading'],style: btmSheetHeadLight,),
                                          subtitle: Row(
                                            children: [
                                              RatingBar.builder(
                                                itemSize: 10,
                                                initialRating: 3,
                                                minRating: 1,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                itemPadding: const EdgeInsets.symmetric(
                                                    horizontal: 4.0),
                                                itemBuilder: (context, _) =>
                                                const Icon(
                                                  Icons.star,
                                                  color: Color(0xffFFAD5A),
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                },
                                              ),
                                              Text("4.0",style: subTitleLight,),
                                            ],
                                          ),
                                          trailing: Text('20 March 2023',style: subTitleLight,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                                          child: Text(feedbackData[index]['subtitle'],style: subTitleLight,),
                                        )
                                      ],
                                    );
                                  } ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ):
                    SizedBox(
                      height: displayHeight(context) * 0.75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              controller: _controller,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(40.0),
                                        topRight: Radius.circular(40.0)),
                                    child: SizedBox(
                                      height: displayHeight(context) * 0.25,
                                      width: double.infinity,
                                      child: Image.asset("Assets/Image1.png",fit:BoxFit.fill,),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child:
                                    Text( subServiceName ?? '',
                                        style: cardTitle),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.star,color: Color(0xffFFAD5A),),
                                        Text("4.0 (34.7K)",style: subTitleLight,),
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: '$subServiceMinCost - $subServiceMaxCost  AED' ?? '',
                                      style: btmSheetHeadLight,
                                      children: <TextSpan>[
                                        TextSpan(text: '  Per Job 1 Hour/Visit', style: subTitleLight),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                      indent: 10,
                                      endIndent: 10,
                                      thickness: 0.3,
                                      color: Colors.grey.shade300),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Text("Frequently asked questions",style: btmSheetHeadLight,),
                                  ),
                                  ListView.builder(
                                      controller: _controller,
                                      itemCount: faqData.length,
                                      shrinkWrap: true,
                                      itemBuilder: (BuildContext context, int index) {
                                        return ExpansionTile(
                                          leading: !_isExpanded ?  const Icon(Icons.add_circle,color: primary,) : const Icon(Icons.remove_circle,color:primary),
                                          controlAffinity: ListTileControlAffinity.leading,
                                          title: Text(faqData[index]['title'],style: btmSheetTitleLight,),
                                          onExpansionChanged: (bool expand){
                                            setState((){
                                              _isExpanded = expand;
                                            });
                                          },
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 12.0),
                                              child: SizedBox(
                                                  width: displayWidth(context) * 0.7,
                                                  child: Text(faqData[index]['subtitle'],style: subTitleLight,)),
                                            )
                                          ],
                                        );
                                      } ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Text("Customer Feedback",style: btmSheetHeadLight,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 12.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            SizedBox(
                                              // width: displayWidth(context) * 0.25,
                                                height: displayHeight(context) * 0.1,
                                                child:  Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            const Icon(Icons.star,color: Color(0xffFFAD5A),size: 30,),
                                                            Text('4.47',style: btmSheetRateHeadLight,),
                                                          ]
                                                      ),
                                                      Text('767K reviews',style: btmSheetHeadLight)
                                                    ]
                                                )
                                            )
                                          ],
                                        ),
                                        VerticalDivider(
                                            indent: 10,
                                            endIndent: 10,
                                            thickness: 1,
                                            color: Colors.grey.shade300),
                                        Column(
                                          children: [
                                            SizedBox(
                                              // width: displayWidth(context) * 0.1,
                                              height: displayHeight(context) * 0.15,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  LinearPercentIndicator(
                                                    width: displayWidth(context) * 0.3,
                                                    animation: true,
                                                    animationDuration: 1000,
                                                    lineHeight: 15.0,
                                                    leading: Row(
                                                        children: [
                                                          Icon(Icons.star,color: Color(0xffFFAD5A),size: 20,),
                                                          Text('1',style: btmSheetHeadLight,)
                                                        ]
                                                    ),
                                                    trailing:  Text("234K",style: subTitleLight,),
                                                    percent: 0.8,
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: primary,
                                                  ),
                                                  LinearPercentIndicator(
                                                    width: displayWidth(context) * 0.3,
                                                    animation: true,
                                                    animationDuration: 1000,
                                                    lineHeight: 15.0,
                                                    leading: Row(
                                                        children: [
                                                          Icon(Icons.star,color: Color(0xffFFAD5A),size: 20,),
                                                          Text('2',style: btmSheetHeadLight,)
                                                        ]
                                                    ),
                                                    trailing:  Text("234K",style: subTitleLight,),
                                                    percent: 0.4,
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: primary,
                                                  ),
                                                  LinearPercentIndicator(
                                                    width: displayWidth(context) * 0.3,
                                                    animation: true,
                                                    animationDuration: 1000,
                                                    lineHeight: 15.0,
                                                    leading: Row(
                                                        children: [
                                                          Icon(Icons.star,color: Color(0xffFFAD5A),size: 20,),
                                                          Text('3',style: btmSheetHeadLight,)
                                                        ]
                                                    ),
                                                    trailing:  Text("234K",style: subTitleLight,),
                                                    percent: 0.6,
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: primary,
                                                  ),
                                                  LinearPercentIndicator(
                                                    width: displayWidth(context) * 0.3,
                                                    animation: true,
                                                    animationDuration: 1000,
                                                    lineHeight: 15.0,
                                                    leading: Row(
                                                        children: [
                                                          Icon(Icons.star,color: Color(0xffFFAD5A),size: 20,),
                                                          Text('4',style: btmSheetHeadLight,)
                                                        ]
                                                    ),
                                                    trailing:  Text("234K",style: subTitleLight,),
                                                    percent: 0.4,
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: primary,
                                                  ),
                                                  LinearPercentIndicator(
                                                    width: displayWidth(context) * 0.3,
                                                    animation: true,
                                                    animationDuration: 1000,
                                                    lineHeight: 15.0,
                                                    leading: Row(
                                                        children: [
                                                          Icon(Icons.star,color: Color(0xffFFAD5A),size: 20,),
                                                          Text('5',style: btmSheetHeadLight,)
                                                        ]
                                                    ),
                                                    trailing:  Text("234K",style: subTitleLight,),
                                                    percent: 0.2,
                                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                                    progressColor: primary,
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Divider(
                                            indent: 10,
                                            endIndent: 10,
                                            thickness: 0.3,
                                            color: Colors.grey.shade300),
                                      ],
                                    ),
                                  ),
                                  ListView.builder(
                                      controller: _controller,
                                      itemCount: feedbackData.length,
                                      shrinkWrap: true,
                                      itemBuilder: (BuildContext context, int index) {
                                        return Column(
                                          children: [
                                            ListTile(
                                              leading: const CircleAvatar(
                                                backgroundColor: primary,
                                                radius: 30,
                                                child: CircleAvatar(
                                                  radius: 25,
                                                  backgroundImage: AssetImage("Assets/admin.png"),
                                                ),
                                              ),
                                              title: Text(feedbackData[index]['heading'],style: btmSheetHeadLight,),
                                              subtitle: Row(
                                                children: [
                                                  RatingBar.builder(
                                                    itemSize: 10,
                                                    initialRating: 3,
                                                    minRating: 1,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    itemPadding: const EdgeInsets.symmetric(
                                                        horizontal: 4.0),
                                                    itemBuilder: (context, _) =>
                                                    const Icon(
                                                      Icons.star,
                                                      color: Color(0xffFFAD5A),
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      print(rating);
                                                    },
                                                  ),
                                                  Text("4.0",style: subTitleLight,),
                                                ],
                                              ),
                                              trailing: Text('20 March 2023',style: subTitleLight,),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                                              child: Text(feedbackData[index]['subtitle'],style: subTitleLight,),
                                            )
                                          ],
                                        );
                                      } ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ) ,
                    // shimmer(displayHeight(context) * 0.47),
                Positioned(
                  top: -70,
                  right: 0,
                  left: 0,
                  child: FloatingActionButton.small(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      onPressed: () => Navigator.pop(context),
                      child: const Icon(Icons.close_rounded, color: primary)),
                )
              ]),
            );
          },

        );
      },
    );
  }

}
