import 'package:elite_care/utils/appColors.dart';
import 'package:elite_care/view/widgets/BigText.dart';
import 'package:flutter/material.dart';

import '../../../utils/dimentions.dart';

class PreviousWidget extends StatelessWidget {
  const PreviousWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
      ),
      margin: EdgeInsets.symmetric(
          horizontal: Dimentions.hight10, vertical: Dimentions.hight10),
      padding: EdgeInsets.all(Dimentions.hight5),
      height: Dimentions.hight90,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BigText(text: "Test Results No. 132",color: AppColors.blackTextColor,size: Dimentions.font16,),
          InkWell(
            onTap: (){
              ///todo: PDF results download
            },
            child: Column(
              children: [
                Icon(Icons.my_library_books_sharp,size:Dimentions.iconSize35,color: AppColors.mainColor,)
              ,Row(children: [
                BigText(text: 'PDF ',color:AppColors.redTextColor,size: Dimentions.font16,bold: true,),
                  BigText(text: ' result',color:AppColors.blueTextColor,size: Dimentions.font16,bold: true,),
                ],)
              ],
            ),
          )
        ],
      ),
    );
  }
}
