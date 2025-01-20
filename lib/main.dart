import 'package:elite_care/localization/mainLocal.dart';
import 'package:elite_care/routes/routes_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/landscapeController.dart';

// main only deals with routes
void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OrientationController(),permanent: true );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      translations: MainLocal(),
      //which is default so this line is pointless

      initialRoute: RouteHelpler.getLoginPage(),
      unknownRoute: RouteHelpler.routes[0],
      getPages: RouteHelpler.routes,
    );
  }
}



///todo: make the splash screen pub.dev package
///maps in the future now location links
///other services like ops and medical check
