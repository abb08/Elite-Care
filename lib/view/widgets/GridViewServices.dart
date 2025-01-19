import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../utils/appColors.dart';
import '../../utils/dimentions.dart';
import 'BigText.dart';

class Gridviewservices extends StatelessWidget {
  final minCount;
  List<Map<dynamic,String>> list;
  Map<String,String> distinations;


  Gridviewservices({super.key,this.minCount=2,required this.list,required this.distinations });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: max((Dimensions.screenWidth/ 250).toInt(), minCount), // number of items in each row
        mainAxisSpacing: Dimensions.hight20, // spacing between rows
        crossAxisSpacing: Dimensions.hight20, // spacing between columns
      ),
      padding: EdgeInsets.all(8.0), // padding around the grid
      itemCount: list.length, // total number of items
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(Dimensions.hight5),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  //spreadRadius: 5,
                  blurRadius: Dimensions.width3,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(Dimensions.radius20)),
          // color of grid items
          child: InkWell(
            onTap: () {
              Get.toNamed(distinations[list[index]["title"]]!);
              ///todo:go to servies page
            },
            child: Stack(
              children: [
                Center(
                  child: Image(
                    image: AssetImage(list[index]['img']!),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: BigText(
                    text: list[index]['title']!,
                    color: AppColors.textColor,
                    size: Dimensions.font24,
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


///todo: after api get model
///1- make parametersto pass in here like element.name /element.picture/
///and a function that coresponds with the id so each id passes in different onTap(){get.tonamed();} or if u can just pass in the name and make the get.to('name') static
