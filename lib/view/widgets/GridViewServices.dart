import 'dart:math';

import 'package:elite_care/view/widgets/servicesOption.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/appColors.dart';
import '../../utils/dimentions.dart';
import 'BigText.dart';

class Gridviewservices extends StatelessWidget {
  final minCount;


  Gridviewservices({super.key,this.minCount=2});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

        crossAxisCount: max((Dimentions.screenWidth/ 250).toInt(), minCount), // number of items in each row
        mainAxisSpacing: Dimentions.hight20, // spacing between rows
        crossAxisSpacing: Dimentions.hight20, // spacing between columns
      ),
      padding: EdgeInsets.all(8.0), // padding around the grid
      itemCount: 20, // total number of items
      itemBuilder: (context, index) {
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
                    size: Dimentions.font24,
                    bold: true,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
