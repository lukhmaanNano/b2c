import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../home.dart';
import '../styles/CommonSize.dart';
import '../styles/CommonTextStyle.dart';
import '../styles/common Color.dart';
import 'currentLoction.dart';

class ManualLocation extends StatefulWidget {
  const ManualLocation({Key? key}) : super(key: key);

  @override
  State<ManualLocation> createState() => _ManualLocationState();
}

class _ManualLocationState extends State<ManualLocation> {
  final Completer<GoogleMapController> _controller = Completer();
  List data = [
    {"id": "1", "lat": 11.0022371, "lng": 76.9527723},
    {"id": "2", "lat": 11.016844, "lng": 76.955833}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.to(const HomeScreen());
          },
        ),
        title: const Text("Locate on Map"),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: displayHeight(context) * 1,
            width: double.infinity,
            child: map(),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Container(
                width: double.infinity,
                height: displayHeight(context) * 0.07,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    color: Get.isDarkMode ? primary : Colors.white),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 20),
                      child: Icon(Icons.search_rounded),
                    ),
                    Text('Enter your area or street name',
                        style: Theme.of(context).textTheme.titleMedium),
                    // TextFormField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Enter your area or street name",
                    //     helperStyle: TextStyle(color: Colors.black)
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: displayHeight(context) * 0.18,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Get.isDarkMode ? primary : Colors.white),
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(
                      Icons.location_on,
                      size: 30,
                    ),
                    title: Text('R.S.Puram'),
                    subtitle: Text('Coimbatore, Tamil Nadu 641002, India'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ElevatedButton(
                        onPressed: () {
                          locationSheet(context);
                        },
                        child: Text(
                          'Enter Address Details',
                          style: Theme.of(context).textTheme.labelLarge,
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget map() {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(data[0]['lat'], data[0]['lng']),
        zoom: 14.0,
      ),
      scrollGesturesEnabled: false,
      mapType: MapType.normal,
      // myLocationEnabled: true,
      myLocationButtonEnabled: false,
      markers: <Marker>{
        Marker(
            infoWindow: const InfoWindow(title: "Destination"),
            markerId: MarkerId(data[0]['id']),
            position: LatLng(data[0]['lat'], data[0]['lng']))
      },
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }

  Future locationSheet(context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: const Icon(Icons.location_on, size: 30),
                  title: const Text('R.S.Puram'),
                  subtitle: Text('Coimbatore, Tamil Nadu 641002, India',
                      style: TextStyle(
                          color: Get.isDarkMode ? Colors.white : Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 0.4)),
                  trailing: const Icon(Icons.edit),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Enter Address",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, bottom: 20, right: 16.0, top: 8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "House/Flat/Block No.",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Apartment/Road/Area",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Nearby Landmark (Optional)",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Save Address as",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 100,
                        height: 32,
                        decoration: BoxDecoration(
                            color: Get.isDarkMode ? Colors.white : primary,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: Center(
                            child: Text(
                          'Home',
                          style: Theme.of(context).textTheme.bodyMedium,
                        )),
                      ),
                      Container(
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
                          'Work',
                          style:
                              Get.isDarkMode ? secondaryDark : secondaryLight,
                        )),
                      ),
                      Container(
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
                          'Others',
                          style:
                              Get.isDarkMode ? secondaryDark : secondaryLight,
                        )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 20, top: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Save Address',
                        style: Theme.of(context).textTheme.labelLarge,
                      )),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
