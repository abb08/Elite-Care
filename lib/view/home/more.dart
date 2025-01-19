import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes_helper.dart';
import '../../utils/appColors.dart';
import '../../utils/dimentions.dart';
import '../widgets/BigText.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: Dimensions.hight10,
        ),
        BigText(
          text: 'More',
          color: AppColors.blueTextColor,
          bold: true,
        ),
        SizedBox(
          height: Dimensions.hight20,
        ),
        InkWell(
            onTap: () {
              Get.toNamed(RouteHelpler.patientProfile);
            },
            child: optionContainer("Profile")),
        SizedBox(
          height: Dimensions.hight20,
        ),
        InkWell(
            onTap: () {
              // Get.toNamed(RouteHelpler.medicalRecordsPage);
            },
            child: optionContainer("Statistics")),
        SizedBox(
          height: Dimensions.hight20,
        ),
        InkWell(
            onTap: () {
              // Get.toNamed(RouteHelpler.testResults);
            },
            child: optionContainer("Forum")),
        SizedBox(
          height: Dimensions.hight20,
        ),
        InkWell(onTap: () {}, child: optionContainer("Settings")),
        SizedBox(
          height: Dimensions.hight20,
        ),
        InkWell(onTap: () {}, child: optionContainer("FAQ")),
        SizedBox(
          height: Dimensions.hight45,
        ),
        InkWell(
            onTap: () {
              Get.toNamed(RouteHelpler.loginPage);
            },
            child: optionContainer("Logout", Colors.red)),
      ],
    );
  }
}

Widget optionContainer(String text, [Color? color]) {
  return Container(
    width: Dimensions.morePageItemWidth,
    height: Dimensions.morePageItemHight,
    padding: EdgeInsets.symmetric(
        horizontal: Dimensions.hight10, vertical: Dimensions.hight5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(Dimensions.radius10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: Dimensions.width3,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Align(

        ///todo: when arabic centerRight
        alignment: Alignment.centerLeft,
        child: BigText(
          text: text,
          color: color ?? AppColors.secondColor,
          bold: true,
          size: Dimensions.font18,
        )),
  );
}
