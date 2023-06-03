import 'dart:async';
import 'package:b2c/home.dart';
import 'package:b2c/styles/CommonSize.dart';
import 'package:b2c/styles/common%20Color.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';
import '../styles/CommonTextStyle.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({Key? key}) : super(key: key);

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
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
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Confirm Location',
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
}
