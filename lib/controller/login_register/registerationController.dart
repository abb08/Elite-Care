import 'package:elite_care/view/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController nameValue = TextEditingController();
  TextEditingController numberValue = TextEditingController();
  TextEditingController passwordValue = TextEditingController();
  TextEditingController confirmPasswordValue = TextEditingController();
  bool nameValidator = false;
  bool numberValidator = false;
  bool passwordValidator = false;
  bool confirmPasswordValidator = false;
  bool passwordMismatch = false;
  var items = [
    'New patient account',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue ='New patient account';



  bool fieldsCheck() {
    nameValidator = nameValue.text.isEmpty ? true : false;
    numberValidator = numberValue.text.isEmpty ? true : false;
    passwordValidator = passwordValue.text.isEmpty ? true : false;
    confirmPasswordValidator =
    confirmPasswordValue.text.isEmpty  ? true : false;
    passwordMismatch = (passwordValue.text != confirmPasswordValue.text) |confirmPasswordValidator?  true:false ;
    update();
    return nameValidator|passwordMismatch?true:false;
  }

  void dropDownSelect(selected){
    dropdownvalue= selected;
    update();
  }


}
