import 'package:get/get.dart';

import '../controller/landscapeController.dart';

class Dimensions {
  static final OrientationController _orientationController = Get.find<OrientationController>();

  static double get screenHight => _orientationController.screenHeight.value;
  static double get screenWidth =>  _orientationController.screenWidth.value;

  // Home
  static double get addhight => screenHight / 3.557251908;

  // Page view
  static double get pageView => screenHight / 2.64;
  static double get pageViewContainer => screenHight / 3.84;
  static double get pageTextContainer => screenHight / 7.03;

  // Heights
  static double get hight5 => screenHight / 168.6857143;
  static double get hight10 => screenHight / 84.4;
  static double get hight15 => screenHight / 56.27;
  static double get hight20 => screenHight / 42.2;
  static double get hight30 => screenHight / 28.13;
  static double get hight34 => screenHight / 27.41176471;
  static double get hight40 => screenHight / 21.08571429;
  static double get hight45 => screenHight / 18.76;
  static double get hight50 => screenHight / 16.86857143;
  static double get hight60 => screenHight / 14.05714286;
  static double get hight70 => screenHight / 12.04897959;
  static double get hight90 => screenHight / 10.35555556;
  static double get hight100 => screenHight / 9.32;

  // Widths
  static double get width3 => screenHight / 281.1428571;
  static double get width10 => screenHight / 84.4;
  static double get width15 => screenHight / 56.27;
  static double get width20 => screenHight / 42.2;
  static double get width30 => screenHight / 28.13;
  static double get width45 => screenHight / 18.76;
  static double get width100 => screenHight / 8.434285714;

  // Font sizes
  static double get font10 => screenHight / 84.34285714;
  static double get font14 => screenHight / 60.24489796;
  static double get font16 => screenHight / 52.71428571;
  static double get font18 => screenHight / 46.85714286;
  static double get font20 => screenHight / 42.17142857;
  static double get font24 => screenHight / 35.14285714;
  static double get font26 => screenHight / 32.43956044;
  static double get font30 => screenHight / 28.11428571;

  // Radius
  static double get radius10 => screenHight / 84.34285714;
  static double get radius15 => screenHight / 56.27;
  static double get radius20 => screenHight / 42.2;
  static double get radius30 => screenHight / 28.13;

  // Icon sizes
  static double get iconSize16 => screenHight / 52.75;
  static double get iconSize24 => screenHight / 35.17;
  static double get iconSize30 => screenHight / 28.11428571;
  static double get iconSize35 => screenHight / 24.09795918;

  // ListView sizes
  static double get listViewImageSize => screenWidth / 3.25;
  static double get listViewTextSize => screenWidth / 3.9;

  // Food details
  static double get foodImagesize => screenHight / 2.41;

  // Bottom height
  static double get bottomHightBar => screenHight / 6.25;

  // More page
  static double get morePageItemHight => screenHight / 19.82978723;
  static double get morePageItemWidth => screenWidth / 1.105943152;

  // Schedule
  static double get schedulePageItemHight => screenHight / 21.6744186;
  static double get schedulePageItemWidth => screenWidth / 2.532544379;

  // Profile
  static double get profileContainerHight => screenHight / 3.728;
  static double get profilePictureHight => screenHight / 6.891961843;
  static double get profileUpcomingContainerHight => screenHight / 3.669291339;

  // LoginPage
  static double get logInLogoHight => screenHight / 5.290644868;
  static double get logInLogoWidth => screenHight / 3.864250073;

}
