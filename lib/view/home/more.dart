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
          height: Dimentions.hight10,
        ),
        BigText(
          text: 'More',
          color: AppColors.secondColor,
          bold: true,
        ),
        SizedBox(
          height: Dimentions.hight20,
        ),
        InkWell(onTap: () {
          Get.toNamed(RouteHelpler.patientProfile);
        }, child: optionContainer("Profile")),
        SizedBox(
          height: Dimentions.hight20,
        ),
        InkWell(onTap: () {}, child: optionContainer("Statistics")),
        SizedBox(
          height: Dimentions.hight20,
        ),
        InkWell(onTap: () {}, child: optionContainer("Forum")),
        SizedBox(
          height: Dimentions.hight20,
        ),
        InkWell(onTap: () {}, child: optionContainer("Settings")),
        SizedBox(
          height: Dimentions.hight20,
        ),
        InkWell(onTap: () {}, child: optionContainer("FAQ")),
        SizedBox(
          height: Dimentions.hight45,
        ),
        InkWell(onTap: () {}, child: optionContainer("Logout", Colors.red)),
      ],
    );
  }
}

Widget optionContainer(String text, [Color? color]) {
  return Container(
    width: Dimentions.morePageItemWidth,
    height: Dimentions.morePageItemHight,
    padding: EdgeInsets.symmetric(
        horizontal: Dimentions.hight10, vertical: Dimentions.hight5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(Dimentions.radius10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: Dimentions.width3,
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
          size: Dimentions.font16,
        )),
  );
}
