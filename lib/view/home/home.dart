import 'dart:math';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:elite_care/model/dummy/home.dart';
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
      final currentCount = (Dimensions.screenWidth/ 250).toInt();
      final minCount = 2;

    return Column(
      children: [
        //ad section
        Container(
          width: double.infinity,
          height: Dimensions.addhight,
          child: items(context,)
        ),
        SizedBox(height: Dimensions.hight5,),

           Gridviewservices(list: home,distinations: distinations,),
      ],
    );
  }
}


Widget items(context){
  PageController pageController = PageController(viewportFraction: 1);
  return PageView.builder(
      controller: pageController,
      itemCount: ads.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap:  () {
            Get.toNamed(ads[index]["url"]);
            //print("tapped   "+ index.toString());
            ///todo: go to the website
          },
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: Dimensions.hight5),
                height: Dimensions.addhight,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    ///todo: this is where the ad goes
                    image: DecorationImage(image: AssetImage(ads[index]['img'])
                        , fit: BoxFit.cover)
                ),

              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: DotsIndicator(
                    decorator: DotsDecorator(
                      color: Colors.grey,
                      activeColor: Colors.white,
                    ),
                    dotsCount: ads.length, //pageLength,
                    position: index.toDouble() //currentIndexPage,
                ),
              )
            ],
          ),
        );
      });
}
