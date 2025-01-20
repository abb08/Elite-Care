import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LogInController extends GetxController {

  TextEditingController numberVal = TextEditingController();
  TextEditingController passwordVal = TextEditingController();
  bool numberValidator = false;
  bool passwordValidator = false;

  bool fieldsEmptyCheck() {
   numberValidator=numberVal.text.isEmpty?true:false;
   passwordValidator=passwordVal.text.isEmpty?true:false;
    update();
  return numberValidator | passwordValidator?true:false;
  }
}