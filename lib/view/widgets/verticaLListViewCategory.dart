import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/appColors.dart';
import '../../utils/dimentions.dart';
import 'BigText.dart';

class VerticalListViewCategories extends StatelessWidget {

  List<Map<dynamic, String>> home;
  Map<String, String> distinations;
  VerticalListViewCategories({super.key,required this.home,required this.distinations});

  @override
  Widget build(BuildContext context) {
    return               Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.hight10, ),
      width: double.infinity,
      height: Dimensions.hight100 * 1.5,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: home.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap:(){
                    Get.toNamed(
                        distinations[home[index]['title']]!
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: Dimensions.hight10),
                    width: Dimensions.screenHight / 8.508333333,
                    height: Dimensions.screenHight / 8.508333333,
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius:
                        BorderRadius.circular(Dimensions.radius10),
                        image: DecorationImage(image: AssetImage(home[index]['img']!),)),

                  ),
                ),
                BigText(
                  text: home[index]['title']!,
                  color: AppColors.blackTextColor,
                  size: Dimensions.font16,
                )
              ],
            );
          }),
    );
  }
}
