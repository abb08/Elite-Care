import 'package:elite_care/utils/appColors.dart';
import 'package:elite_care/utils/dimentions.dart';
import 'package:elite_care/view/widgets/BigText.dart';
import 'package:elite_care/view/widgets/GridViewServices.dart';
import 'package:elite_care/view/widgets/servicesOption.dart';
import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: Dimentions.hight10,),
        BigText(text: 'Services',color: AppColors.blueTextColor,bold: true,),
        SizedBox(height: Dimentions.hight20,),
        Gridviewservices(),
      ],
    );
  }
}
