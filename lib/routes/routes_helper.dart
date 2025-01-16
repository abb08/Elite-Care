
import 'package:elite_care/view/login_register/loginPage.dart';
import 'package:elite_care/view/login_register/registerPage.dart';
import 'package:elite_care/view/patientProfile/patientProfile.dart';
import 'package:get/get.dart';

import '../view/home/mainPage.dart';
import '../view/unKnown/unKnown.dart';

class RouteHelpler {
  static const String home = "/";
  static const String unKnown = "/un_known";
  static const String patientProfile = "/patient_profile";
  static const String loginPage = "/Log_in_page";
  static const String registerPage = "/register_page";

  static String getHome() => '$home';
  static String getUnKnown() => '$unKnown';
  static String getPatientProfile() => '$patientProfile';
  static String getLoginPage() => '$loginPage';
  static String getRegisterPage() => '$registerPage';


  static List<GetPage> routes = [
    //dont change the unknown position since its [0]
    GetPage(
      name: unKnown,
      page: () {
        return Unknown();
      },
    ),

    GetPage(
      name: home,
      page: () {
        return MainPage();//HomePage();
      },
    ),
    GetPage(
      name: patientProfile,
      page: () {
        return Patientprofile();//HomePage();
      },
    ),
    GetPage(
      name: loginPage,
      page: () {
        return LogInPage();
      },
    ),
    GetPage(
      name: registerPage,
      page: () {
        return RegisterPage();
      },

    ),
  ];
}
