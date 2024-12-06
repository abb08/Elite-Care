import 'package:elite_care/localization/localController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

///todo:main services
///todo:booking section
///todo:h-listview popular hospitals
///todo: advertisment secton // future
///todo:h-listview popular spicialization
///todo:bottom navigation bar(to bast ops/personal account)


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LocalController(), permanent: true);

    /// todo: inject the dependancy in the right place so that even the
    /// onboarding is on board on this or just put it to default as the
    /// phone's language
    LocalController localController =Get.find();// this one for the buttons
    return Scaffold(
appBar: AppBar(title: Text("1".tr),//use .tr whenever multilanguage

),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: (){
              localController.changeLanguage('ar');
            },
                child: Text("arabic"),),
            TextButton(onPressed: (){
              localController.changeLanguage('en');
            },
              child: Text("english"),),
          ],
        ),
      ),
    );
  }
}
