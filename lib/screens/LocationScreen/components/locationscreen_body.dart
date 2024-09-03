import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/globalbutton.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:flutter_application_2/screens/HomeScreen/homescreen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:sizer/sizer.dart';

class Geolocatortrail extends StatefulWidget {
  const Geolocatortrail({super.key});

  @override
  State<Geolocatortrail> createState() => _GeolocatortrailState();
}

class _GeolocatortrailState extends State<Geolocatortrail> {
  void getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print('Location Permission denied');
      LocationPermission ask = await Geolocator.requestPermission();
      if (ask == LocationPermission.denied ||
          ask == LocationPermission.deniedForever) {
        print('Location Permission still denied');
        return;
      }
    }

    try {
      Position currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      print("Latitude=${currentPosition.latitude.toString()}");
      print("Longitude=${currentPosition.longitude.toString()}");

      List<Placemark> placemarks = await placemarkFromCoordinates(
        currentPosition.latitude,
        currentPosition.longitude,
      );

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
        String location =
            "${place.subLocality},${place.locality}, ${place.administrativeArea}, ${place.country}";

        print("Location: $location");

        // Navigate to the LocationDisplayPage and pass the location data
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(location: location),
          ),
        );
      } else {
        print("No placemarks found");
      }
    } catch (e) {
      print("Error fetching location: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Images.LOCATION),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Enable Your Location ',
            style: TextStyle(fontWeight: bold1, fontSize: 15.sp),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Please allow to use your location to show nearby restaurant on the map ',
            maxLines: 3,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 2.h,
          ),
          GlobalButton(
            title: "Enable Location",
            btnHeight: 7.h,
            btnWidth: 89.w,
            btncolor: mred,
            ontap: () {
              getCurrentLocation();
            },
          ),
        ],
      ),
    );
  }
}

// class LocationDisplayPage extends StatelessWidget {
//   final String location;

//   const LocationDisplayPage({super.key, required this.location});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Your Location"),
//       ),
//       body: Center(
//         child: Text(
//           location,
//           style: TextStyle(fontSize: 24),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
// }