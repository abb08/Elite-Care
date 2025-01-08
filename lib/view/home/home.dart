import 'dart:math';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:elite_care/utils/appColors.dart';
import 'package:elite_care/utils/dimentions.dart';
import 'package:elite_care/view/widgets/GridViewServices.dart';
import 'package:elite_care/view/widgets/servicesOption.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
      final currentCount = (Dimentions.screenWidth/ 250).toInt();
      final minCount = 2;
    PageController pageController = PageController(viewportFraction: 1);
    return Column(
      children: [
        //ad section
        Container(
          width: double.infinity,
          height: Dimentions.addhight,
          child: Stack(children: [
            PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return items(context, index);
                }),
            Align(
              alignment: Alignment.bottomCenter,
              child: DotsIndicator(
                  decorator: DotsDecorator(
                    color: Colors.grey,
                    activeColor: Colors.white,
                  ),
                  dotsCount: 5, //pageLength,
                  position: 3 //currentIndexPage,
                  ),
            )
          ]),
        ),
        SizedBox(height: Dimentions.hight5,),

           Gridviewservices(),
      ],
    );
  }
}


Widget items(context, int index){
  
  return InkWell(
    onTap:  () {
      //print("tapped   "+ index.toString());
    ///todo: go to the website
    },
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: Dimentions.hight5),
      height: Dimentions.addhight,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimentions.radius20),
        ///todo: this is where the ad goes
        image: DecorationImage(image: AssetImage('assets/images/Image 10.png')
       , fit: BoxFit.cover)
      ),
      child: Text(index.toString()),
    ),
  );
}
