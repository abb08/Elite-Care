import 'package:elite_care/utils/appColors.dart';
import 'package:elite_care/utils/dimentions.dart';
import 'package:elite_care/view/widgets/BigText.dart';
import 'package:flutter/material.dart';


class ServiesOption extends StatelessWidget {
  int index;

  ServiesOption({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimentions.hight5),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              //spreadRadius: 5,
              blurRadius: Dimentions.width3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(Dimentions.radius20)),
      // color of grid items
      child: InkWell(
        onTap: () {

          ///todo:go to servies page
        },
        child: Stack(
          children: [
            Center(
              child: Image(
                image: AssetImage('assets/images/homevisiticon.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BigText(
                text: 'Appointments',
                color: AppColors.textColor,
                size: Dimentions.font20,
                bold: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
