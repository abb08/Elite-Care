/*
import 'package:elite_care/localization/localController.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../controller/mainPageCont.dart';

///todo:main services
///todo:booking section
///todo:h-listview popular hospitals
///todo: advertisment secton // future
///todo:h-listview popular spicialization
///todo:bottom navigation bar(to bast ops/personal account)


class MainPage extends StatelessWidget {
  final MainPageController mainPagecont = Get.put(MainPageController(),permanent: true);
  MainPage({super.key});


  @override
  Widget build(BuildContext context) {
    Get.put(LocalController(), permanent: true);//localization


    /// todo: inject the dependancy in the right place so that even the
    /// onboarding is on board on this or just put it to default as the
    /// phone's language
    LocalController localController =Get.find();// this one for the buttons
    return Scaffold(
appBar: AppBar(title: Text("1".tr),//use .tr whenever multilanguage

),
      bottomNavigationBar: NavigationBar(

        onDestinationSelected: (int index) {
mainPagecont.updateIndex(index);
        },
        indicatorColor: Colors.transparent,
        destinations: const <Widget>[
          NavigationDestination(
            //selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'main',

          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.calendar_today_outlined)),
            label: 'My Activity',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.person_pin),
            ),
            label: 'My Profile',
          ),
        ],
      ),
      body: GetBuilder<MainPageController>(
        builder: (cont)=>cont.pageIndex==0?Home():cont.pageIndex==1?MyProfile():MyActivity(),
      ),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(height: Get.height/50,),
        Container(height: Get.height/6,
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            semanticsLabel: 'My SVG Image',

          ),),
      ],
    );
  }
}*/
