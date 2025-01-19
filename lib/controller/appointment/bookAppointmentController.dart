import 'package:get/get.dart';


class BookAppointmentController extends GetxController{
  int chosenSchedule=0;
  int chosenTime=0;

  void updateSchedule(int index){
    chosenSchedule=index;
    update();
  }
  void updateTime(int index){
    chosenTime=index;
    update();
  }


}