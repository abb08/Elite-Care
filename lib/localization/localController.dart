import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:elite_care/main.dart';


//SharedPreferences sharepref =  SharedPreferences.getInstance() as SharedPreferences;
class LocalController extends GetxController{
  @override
  void onInit() async{

    super.onInit();
  }

//Locale? initializing = sharepref!.getString("lang") == null ? Get.deviceLocale : Locale(sharepref.getString("lang")!);
  // i hAVE no idea about the above row
  //its about storing the shosen language if null it goes with the device default locale else it goes with it
  //its not in affect rn
  void changeLanguage (String langCode) async{
    //AR
    //EN
    // as the phone
    Locale locale = Locale(langCode);;
   // sharepref!.setString("lang", langCode);
    Get.updateLocale(locale);
  }
}