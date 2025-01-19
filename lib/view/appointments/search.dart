import 'package:elite_care/view/widgets/BigText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../routes/routes_helper.dart';
import '../../utils/appColors.dart';
import '../../utils/dimentions.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                  iconSize: Dimensions.hight50,
                  color: AppColors.secondColor,
                ),
                Padding(
                  padding: EdgeInsets.all(Dimensions.hight5),
                  child: BigText(text: "Search",color: AppColors.blueTextColor,bold: true,size: Dimensions.font30,)
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(RouteHelpler.patientProfile);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: Dimensions.hight5),
                    width: Dimensions.hight50,
                    height: Dimensions.hight50,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: Dimensions.width3,
                            color: AppColors.secondColor),
                        shape: BoxShape.circle,
                        color: AppColors.secondColor,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/Recovered_jpg_file(7774).jpg'),
                            fit: BoxFit.contain)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.hight40,
            ),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: Dimensions.hight30),
              child: Container(
                height: Dimensions.hight45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: Dimensions.width3,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(Dimensions.radius10),
                ),
                child: TextField(
                  //controller: controller.textController,

                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: AppColors.mainColor,
                    ),
                    hintText: 'Doctor,Specialization,clinic...',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.hight20,
            ),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: Dimensions.hight30),
              child: Container(
                height: Dimensions.hight45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: Dimensions.width3,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(Dimensions.radius10),
                ),
                child: TextField(
                  //controller: controller.textController,

                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: AppColors.mainColor,
                    ),
                    border: InputBorder.none,
                    hintText: 'Select Area...',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.hight20,
            ),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: Dimensions.hight30),
              child: Container(
                height: Dimensions.hight45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: Dimensions.width3,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(Dimensions.radius10),
                ),
                child: TextField(
                  //controller: controller.textController,

                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: AppColors.mainColor,
                    ),
                    hintText: 'Select Date...',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.hight50,
            ),
            InkWell(
              onTap: (){
                Get.toNamed(RouteHelpler.searchResults);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: Dimensions.hight60),
                height: Dimensions.hight40,
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius10)
                ),
                child: Center(
                  child: BigText(text: "Search",bold: true,size: Dimensions.font20,),
                ),
              ),
            )
          ],
        ),
      ) ,
      ),
    );



  }
}
