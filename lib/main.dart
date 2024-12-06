import 'package:elite_care/localization/mainLocal.dart';
import 'package:elite_care/view/doctorProfile.dart';
import 'package:elite_care/view/hospitalProfile.dart';
import 'package:elite_care/view/main%20services/bookAppointment.dart';
import 'package:elite_care/view/mainPage.dart';
import 'package:elite_care/view/unKnown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// main only deals with routes
void main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Get.deviceLocale,
      translations: MainLocal(),


      initialRoute: '/',//which is default so this line is pointless
      unknownRoute: GetPage(name: '/notfound', page: () => UnKnown()),//just in case
      getPages: [
        GetPage(name: '/', page: () => MainPage()),
        GetPage(name: '/hospital profile', page: () => HospitalProfile()),
        GetPage(name: '/doctor profile', page: () => DoctorProfile()),
        GetPage(name: '/book appointment', page: () => BookAppointment()),

      ],
    )
    ;
  }
}




///todo: make the splash screen pub.dev package
///maps in the future now location links
///other services like ops and medical check

