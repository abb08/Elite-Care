import 'package:get/get.dart';

class PaitnetProfileCont extends GetxController{
  bool chosen;

  PaitnetProfileCont({this.chosen = true});

  void switchTab(bool choice){
    chosen = choice;
    print('chosen'+chosen.toString());
    update();
  }


}