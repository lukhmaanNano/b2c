import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:b2c/stylee/CommonSize.dart';
import 'package:b2c/stylee/CommonTextStyle.dart';
import 'package:b2c/stylee/common%20Color.dart';
import 'package:b2c/widgets/development.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:async';
import 'Screens/Air Conditioner/AirConditionerMain.dart';
import 'Screens/Electrical Work/ElectricalWork.dart';
import 'Screens/Plumbing/PlumbingMain.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final ScrollController scrollControl = ScrollController();
  int _index = 2;
  List data1 = [
    {'Name': 'Air Conditioner', 'img': 'Assets/ac.jpg'},
    {'Name': 'Electrical Work', 'img': 'Assets/electrical.jpg'},
    {'Name': 'Painting', 'img': 'Assets/painting.jpg'},
    {'Name': 'Cleaning', 'img': 'Assets/cleaning.jpg'},
    {'Name': 'Furniture Care', 'img': 'Assets/furniture.jpg'},
  ];
  List data = [
    {'Name': 'Plumbing', 'img': 'Assets/img1.png'},
    {'Name': 'Air Conditioner', 'img': 'Assets/img2.png'},
    {'Name': 'Electrical Work', 'img': 'Assets/img3.png'},
    {'Name': 'Painting', 'img': 'Assets/img4.png'},
    {'Name': 'Cleaning', 'img': 'Assets/img5.png'},
    {'Name': 'Pest Control', 'img': 'Assets/img6.png'},
    {'Name': 'Furniture Care', 'img': 'Assets/img7.png'},
    {'Name': 'Lighting', 'img': 'Assets/img8.png'},
  ];
  List searchHint = [
    'Plumbing',
    'Air Conditioner',
    'Electrical Work',
    'Painting',
    'Cleaning',
    'Pest Control',
    'Furniture Care',
    'Lighting',
  ];

  Object routing(String val) {
    switch (val) {
      case 'Plumbing':
        {
          return pageNavigator(const PlumbingMain());
        }
      case 'Air Conditioner':
        {
          return pageNavigator(const AirConditioner());
        }
      case 'Electrical Work':
        {
          return pageNavigator(const ElectricalWork());
        }
      default:
        {
          return pageNavigator(const Development());
        }
    }
  }

  Future pageNavigator(val) {
    return Navigator.push(
        context,
        PageTransition(
            ctx: context,
            inheritTheme: true,
            type: PageTransitionType.fade,
            child: val));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 270,
              child: Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Container(
                      color: primary,
                      height: 180,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15.0,
                                left: 10.0,
                                right: 10.0,
                                bottom: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    locationSheet(context);
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 5),
                                          Text('Doha,Qatar',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                              )),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text('Nanosoft',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white,
                                                )),
                                          ),
                                          SizedBox(width: 5),
                                          Text('P.O.Box :40072,E1-102',
                                              style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white,
                                              )),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.keyboard_arrow_down,
                                            color: Colors.white,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.notifications_active_rounded,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.message_rounded,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              height: 40,
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w300),
                                decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.only(bottom: 17.0),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    size: 25,
                                    color: primary,
                                  ),
                                  labelStyle: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                  border: InputBorder.none,
                                  label: Row(
                                    children: [
                                      const Text('Search service for '),
                                      AnimatedTextKit(
                                        pause:
                                            const Duration(milliseconds: 2000),
                                        repeatForever: true,
                                        // onTap: () => print("Tap Event"),
                                        animatedTexts: [
                                          for (final txt in searchHint)
                                            TyperAnimatedText(
                                              txt,
                                              textAlign: TextAlign.start,
                                            )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                  Positioned(
                    top: 120,
                    child: SizedBox(
                      // height: 140,
                      height: 170,
                      width: displayWidth(context) * 1.02,
                      child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context)
                            .copyWith(scrollbars: false),
                        child: Padding(
                          // padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          padding: const EdgeInsets.only(
                              left: 5.0, right: 5.0, bottom: 14.0),
                          child: ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return SizedBox(
                                width: 310,
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    color: Colors.grey.shade100,
                                    elevation: 0,
                                    child: const Icon(Icons.card_giftcard,
                                        color: Colors.white)),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, left: 8.0),
              child: Text('Most Booked Service', style: cardTitle),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                height: displayHeight(context) * 0.12,
                width: displayWidth(context) * 0.98,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: data1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: const Color(0xFFade8f4).withOpacity(0.45),
                          elevation: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    topLeft: Radius.circular(10.0),
                                  ),
                                  child: SizedBox(
                                    width: displayWidth(context) * 0.33,
                                    height: displayHeight(context) * 0.08,
                                    child: Image.asset(
                                      data1[index]['img'],
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                              const SizedBox(height: 3),
                              Text(data1[index]['Name']),
                            ],
                          ));
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Book Your Home Service', style: cardTitle),
                  Text('See All', style: moreText),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: displayHeight(context) * 0.30,
                  child: GridView.builder(
                      controller: scrollControl,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1.5,
                              crossAxisSpacing: 0.01,
                              mainAxisSpacing: 0.01),
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            routing(data[index]['Name']);
                          },
                          child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              // color: const Color(0xFFade8f4).withOpacity(0.5),
                              color: Colors.white,
                              shadowColor: Colors.grey.shade100,
                              elevation: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      data[index]['img'],
                                      height: 25,
                                      width: 25,
                                    ),
                                    const SizedBox(height: 10),
                                    Text('${data[index]['Name']}',
                                        style: const TextStyle(
                                            fontSize: 12,
                                            overflow: TextOverflow.ellipsis))
                                  ],
                                ),
                              )),
                        );
                      })),
            )
          ],
        ),
      ),
      bottomNavigationBar: FloatingNavbar(
        onTap: (int val) => setState(() => _index = val),
        currentIndex: _index,
        backgroundColor: Colors.blue.shade100.withOpacity(0.5),
        selectedBackgroundColor: Colors.white,
        selectedItemColor: primary,
        unselectedItemColor: primary,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        items: [
          FloatingNavbarItem(icon: Icons.grid_view_rounded, title: 'Menu'),
          FloatingNavbarItem(icon: Icons.read_more_rounded, title: 'Call'),
          FloatingNavbarItem(icon: Icons.house_rounded, title: 'Home'),
          FloatingNavbarItem(icon: Icons.person_rounded, title: 'Profile'),
          FloatingNavbarItem(
              icon: Icons.shopping_bag_rounded, title: 'Booking'),
        ],
      ),
    );
  }

  Future locationSheet(context) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Wrap(children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 18.0, top: 10.0, bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Choose a location',
                  style: headerText,
                ),
                IconButton(
                  color: primary,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: const Icon(Icons.close_rounded),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
                'Chosen location is reflected in the list of available services',
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    wordSpacing: 2)),
          ),
          Divider(
              indent: 10,
              endIndent: 10,
              thickness: 0.3,
              color: Colors.grey.shade300),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 12),
            child: Text(
              'Recently serviced location',
              style: headerText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: displayWidth(context) * 0.41,
                    height: 100,
                    child: Card(
                        elevation: 0,
                        color: primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    height: 20,
                                    width: 20,
                                    color: Colors.white,
                                    'Assets/home.svg',
                                  ),
                                  const SizedBox(width: 5),
                                  const Text('Nanosoft', style: primaryTest)
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              child: Text('P.O.Box :40072,E1-102',
                                  style: primaryTest),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              child: Text('Doha,Qatar', style: primaryTest),
                            )
                          ],
                        ))),
                SizedBox(
                    width: displayWidth(context) * 0.41,
                    height: 100,
                    child: Card(
                        elevation: 0,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: primary,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    height: 20,
                                    width: 20,
                                    color: primary,
                                    'Assets/home.svg',
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                  const SizedBox(width: 5),
                                  const Text('Nanosoft', style: secondaryTest)
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              child: Text('P.O.Box :40072,E1-102',
                                  style: secondaryTest),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              child: Text('Doha,Qatar', style: secondaryTest),
                            )
                          ],
                        ))),
                FloatingActionButton.small(
                    foregroundColor: Colors.white,
                    backgroundColor: primary,
                    onPressed: () {},
                    child: const Icon(Icons.control_point_rounded))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 12),
            child: Text(
              'New location',
              style: headerText,
            ),
          ),
          SizedBox(
            height: 190,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Row(
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.gps_fixed_rounded, color: primary),
                        Icon(Icons.location_on_rounded, color: primary),
                        Icon(Icons.location_on_rounded, color: primary),
                        Icon(Icons.location_on_rounded, color: primary),
                        Icon(Icons.location_on_rounded, color: primary),
                        Icon(Icons.location_on_rounded, color: primary),
                        Icon(Icons.location_on_rounded, color: primary),
                      ]),
                  const SizedBox(width: 15),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Current Location', style: locationStyle),
                        Text('Al Rayyan', style: locationStyle),
                        Text('Al Wakrah', style: locationStyle),
                        Text('Al khor', style: locationStyle),
                        Text('Al-Shahaniya', style: locationStyle),
                        Text('Al-Ruways', style: locationStyle),
                        Text('Dukhan', style: locationStyle),
                      ])
                ],
              ),
            ),
          ),
          const SizedBox(height: 30)
        ]);
      },
    );
  }
}
