import "package:b2c/Controller/themeService.dart";
import "package:b2c/Screens/Electrical%20Work/ElectricalWork.dart";
import "package:b2c/Screens/Plumbing/PlumbingMain.dart";
import "package:b2c/mapScreen/ManualLoction.dart";
import "package:b2c/mapScreen/currentLoction.dart";
import "package:b2c/styles/CommonSize.dart";
import "package:b2c/styles/CommonTextStyle.dart";
import "package:b2c/styles/common%20Color.dart";
import "package:b2c/widgets/development.dart";
import "package:carousel_slider/carousel_slider.dart";
import "package:curved_navigation_bar/curved_navigation_bar.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:get/get.dart";
import "package:salomon_bottom_bar/salomon_bottom_bar.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 2;
  List data = [
    {"id": "1", "img1": "Assets/plumbing.png"},
    {"id": "2", "img1": "Assets/ac.png"},
    {"id": "3", "img1": "Assets/electric.png"},
    {"id": "4", "img1": "Assets/painting.png"},
    {"id": "5", "img1": "Assets/cleaning.png"},
  ];
  List dataDark = [
    {"id": "1", "img1": "Assets/plumbingDark.png"},
    {"id": "2", "img1": "Assets/acDark.png"},
    {"id": "3", "img1": "Assets/electricDark.png"},
    {"id": "4", "img1": "Assets/paintingDark.png"},
    {"id": "5", "img1": "Assets/cleaningDark.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      locationSheet(context);
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 30,
                        ),
                        Text('Doha,Qatar',
                            style: Theme.of(context).textTheme.displaySmall),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            ThemeService().changeThemeMode();
                          },
                          icon: Icon(
                              Get.isDarkMode
                                  ? Icons.light_mode
                                  : Icons.light_mode_outlined,
                              size: 30)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            size: 30,
                          ))
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                const CircleAvatar(
                  backgroundColor: primary,
                  radius: 60,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("Assets/admin.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("Mohammed Lukhmaan",
                      style: Theme.of(context).textTheme.displayMedium),
                ),
                Text('Sun. Jan 28 | 07:32 AM',
                    style: Theme.of(context).textTheme.headlineSmall),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    child: Get.isDarkMode
                        ? Image.asset('Assets/logoLightTheme.png')
                        : Image.asset('Assets/clientlogo.png'),
                  ),
                ),
                Text(
                  "Our Services",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            SizedBox(
              child: CarouselSlider.builder(
                itemCount: data.length,
                options: CarouselOptions(
                    // aspectRatio : 5,
                    viewportFraction: 0.4,
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.5,
                    enlargeStrategy: CenterPageEnlargeStrategy.zoom),
                itemBuilder: (context, index, realIndex) {
                  return InkWell(
                    onTap: () {
                      if (data[index]['id'] == '1') {
                        Get.to(const PlumbingMain());
                      } else if (data[index]['id'] == '2') {
                        Get.to(const Development());
                      } else if (data[index]['id'] == '3') {
                        Get.to(const ElectricalWork());
                      } else if (data[index]['id'] == '4') {
                        Get.to(const Development());
                      } else {
                        Get.to(const Development());
                      }
                    },
                    child: Container(
                        margin: const EdgeInsets.all(1),
                        height: 200,
                        child: Image.asset(
                          Get.isDarkMode
                              ? dataDark[index]['img1']
                              : data[index]['img1'],
                        )),
                  );
                },
              ),
            ),
            FilledButton(
                onPressed: () {},
                child: Text('Packages',
                    style: Theme.of(context).textTheme.labelLarge))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: Get.isDarkMode ? darkShadow : commonShadow,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SalomonBottomBar(
            currentIndex: _index,
            onTap: (i) => setState(() => _index = i),
            items: [
              SalomonBottomBarItem(
                icon: const Icon(Icons.grid_view_rounded),
                title: const Text("Menu"),
                selectedColor: Get.isDarkMode ? Colors.white : primary,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.local_mall),
                title: const Text("Offers"),
                selectedColor: Get.isDarkMode ? Colors.white : primary,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.house_rounded),
                title: const Text("Home"),
                selectedColor: Get.isDarkMode ? Colors.white : primary,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.person_rounded),
                title: const Text("More"),
                selectedColor: Get.isDarkMode ? Colors.white : primary,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.read_more_rounded),
                title: const Text("Profile"),
                selectedColor: Get.isDarkMode ? Colors.white : primary,
              ),
            ],
          ),
        ),
      ),
      // CurvedNavigationBar(
      //     backgroundColor: Colors.transparent,
      //     color:Get.isDarkMode ?primary:Colors.white,
      //     buttonBackgroundColor:Get.isDarkMode ?Colors.white:primary,
      //     items:  const [
      //       Icon(Icons.grid_view_rounded,size: 35,),
      //       Icon(Icons.read_more_rounded,size: 35,),
      //       Icon(Icons.house_rounded,size: 35,),
      //       Icon(Icons.person_rounded,size: 35,),
      //     ]
      //
      // ),
    );
  }

  Future locationSheet(context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Stack(clipBehavior: Clip.none, children: [
          SizedBox(
            height: displayHeight(context) * 0.7,
            child: SingleChildScrollView(
              child: Wrap(children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 18.0, top: 10.0, bottom: 5.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Choose a location',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                      'Chosen location is reflected in the list of available services',
                      style: Theme.of(context).textTheme.titleSmall),
                ),
                const Divider(indent: 10, endIndent: 10, thickness: 0.3),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 13.0, vertical: 12),
                  child: Text(
                    'Saved',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: displayWidth(context) * 0.41,
                          height: 100,
                          child: Card(
                              elevation: 0,
                              color: Get.isDarkMode ? Colors.white : primary,
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
                                          color: Get.isDarkMode
                                              ? primary
                                              : Colors.white,
                                          'Assets/home.svg',
                                        ),
                                        const SizedBox(width: 5),
                                        Text('Nanosoft',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 5.0),
                                    child: Text('P.O.Box :40072,E1-102',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 5.0),
                                    child: Text('Doha,Qatar',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall),
                                  )
                                ],
                              ))),
                      SizedBox(
                          width: displayWidth(context) * 0.41,
                          height: 100,
                          child: Card(
                              elevation: 0,
                              color: Get.isDarkMode ? primary : Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color:
                                      Get.isDarkMode ? Colors.white : primary,
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
                                          color: Get.isDarkMode
                                              ? Colors.white
                                              : primary,
                                          'Assets/home.svg',
                                          allowDrawingOutsideViewBox: true,
                                        ),
                                        const SizedBox(width: 5),
                                        Text('Nanosoft',
                                            style: Get.isDarkMode
                                                ? secondaryDark
                                                : secondaryLight)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 5.0),
                                    child: Text('Quratul-ain,R.S.Puram',
                                        style: Get.isDarkMode
                                            ? secondarySubDark
                                            : secondarySubLight),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 5.0),
                                    child: Text('Coimbatore',
                                        style: Get.isDarkMode
                                            ? secondarySubDark
                                            : secondarySubLight),
                                  )
                                ],
                              ))),
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(const CurrentLocation());
                  },
                  leading: const Icon(Icons.gps_fixed_rounded),
                  title: const Text('Current Location'),
                  subtitle: Text('R.S Puram,Coiambatore',
                      style: TextStyle(
                          color: Get.isDarkMode ? Colors.white : Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 0.4)),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                const Divider(indent: 10, endIndent: 10, thickness: 0.3),
                ListTile(
                  onTap: () {
                    Get.to(const ManualLocation());
                  },
                  leading: const Icon(Icons.add),
                  title: const Text('Add Location Manually'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                const Divider(
                  indent: 10,
                  endIndent: 10,
                  thickness: 0.3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 13.0, vertical: 12),
                  child: Text(
                    'New location',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                SizedBox(
                  height: 190,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13.0),
                    child: Row(
                      children: [
                        const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.location_on_rounded),
                              Icon(Icons.location_on_rounded),
                              Icon(Icons.location_on_rounded),
                              Icon(Icons.location_on_rounded),
                              Icon(Icons.location_on_rounded),
                              Icon(Icons.location_on_rounded),
                            ]),
                        const SizedBox(width: 15),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Al Rayyan',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              Text('Al Wakrah',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              Text('Al khor',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              Text('Al-Shahaniya',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              Text('Al-Ruways',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              Text('Dukhan',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                            ])
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30)
              ]),
            ),
          ),
          Positioned(
            top: -70,
            right: 0,
            left: 0,
            child: FloatingActionButton.small(
                onPressed: () => Navigator.pop(context),
                child: const Icon(Icons.close_rounded)),
          )
        ]);
      },
    );
  }
}
