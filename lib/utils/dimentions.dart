import 'package:get/get.dart';

class Dimentions {

   static double screenHight = Get.height;
   static double screenWidth = Get.width;

   //u make a suitable view in pixils then get the page hoght and devide to get the factor
//screenhight/(x)
  //x=desiredhight i.e=10px / current screen hight i.e. 840.123
// home
  // advertisment
  static double addhight = screenHight/3.557251908;


//
   static double pageView = screenHight/2.64;
   static double pageViewContainer = screenHight/3.84;
   static double pageTextContainer = screenHight/7.03;
//hight
  static double hight5 = screenHight/168.6857143;
   static double hight10 = screenHight/84.4;
   static double hight15 = screenHight/56.27;
   static double hight20 = screenHight/42.2;
   static double hight45 = screenHight/18.76;
   static double hight30 = screenHight/28.13;
  static double hight50 = screenHight/16.86857143;
  static double hight60 = screenHight/14.05714286;
//width
   // ur still using hight maybe u wanna change it later
  static double width3 = screenHight/281.1428571;
  static double width10 = screenHight/84.4;
   static double width15 = screenHight/56.27;
   static double width20 = screenHight/42.2;
   static double width30 = screenHight/28.13;
   static double width45 = screenHight/18.76;
  static double width100 = screenHight/8.434285714;
//font size
   static double font20= screenHight/42.2;
  static double font26 = screenHight/42.2;
  static double font16 = screenHight/52.75;
  static double font30 = screenHight/28.11428571;

   //raduis
   static double radius15= screenHight/56.27;
  static double radius20= screenHight/42.2;
   static double radius30= screenHight/28.13;
   //icon size
   static double iconSize24 = screenHight/35.17;
  static double iconSize16 = screenHight/52.75;
  static double iconSize30 = screenHight/28.11428571;

   //listview size
   static double listViewImageSize = screenWidth/3.25;
   static double listViewTextSize = screenWidth/3.9;


   //food details
  static double foodImagesize= screenHight/2.41;


  //bottom hoght
  static double bottomHightBar= screenHight/6.25;
}
