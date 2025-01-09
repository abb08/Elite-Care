import 'package:get/get.dart';

class SchedulePageController extends GetxController{
  bool chosen;

  SchedulePageController({this.chosen = true});

  void switchTab(bool choice){
    chosen = choice;
    print('chosen'+chosen.toString());
    update();
  }


}