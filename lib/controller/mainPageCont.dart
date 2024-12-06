import 'package:get/get.dart';

class MainPageController extends GetxController{
int pageIndex =0;

void updateIndex(index){
  pageIndex= index;
  update();
}

}