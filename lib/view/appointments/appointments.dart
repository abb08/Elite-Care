import 'package:elite_care/model/dummy/home.dart';
import 'package:elite_care/model/dummy/records.dart';
import 'package:elite_care/utils/appColors.dart';
import 'package:elite_care/utils/dimentions.dart';
import 'package:elite_care/view/widgets/BigText.dart';
import 'package:elite_care/view/widgets/GridViewServices.dart';
import 'package:elite_care/view/widgets/docSugList.dart';
import 'package:elite_care/view/widgets/ratingStarsView.dart';
import 'package:elite_care/view/widgets/servicesOption.dart';
import 'package:elite_care/view/widgets/verticaLListViewCategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:elite_care/model/dummy/specialization.dart';
import 'package:elite_care/model/dummy/docSuggestions.dart';

import '../../routes/routes_helper.dart';

class Appointments extends StatelessWidget {
  const Appointments({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Dimensions.hight10,
              ),
              //appbar
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      ///todo:go to notifications
                    },
                    icon: Icon(Icons.menu),
                    iconSize: Dimensions.hight50,
                    color: AppColors.secondColor,
                  ),
                  Padding(
                    padding: EdgeInsets.all(Dimensions.hight5),
                    child: SvgPicture.asset(
                      'assets/images/logo.svg',
                      fit: BoxFit.contain,
                      height: Dimensions.hight45,
                      width: Dimensions.hight45,
                    ),
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
                height: Dimensions.hight10,
              ),
              //Appointments
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.hight30),
                child: BigText(
                  text: "Appointments",
                  color: AppColors.blueTextColor,
                  bold: true,
                  size: Dimensions.font26,
                ),
              ),
              SizedBox(
                height: Dimensions.hight20,
              ),
              //searchBar button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.hight30),
                child: Stack(
                  children: [
                    Container(
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
                        readOnly: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: AppColors.mainColor,
                          ),
                          hintText: 'Search...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("dd");
                        Get.toNamed(RouteHelpler.searchScreen);
                      },
                      child: Container(
                        height:Dimensions.hight45,
                        color: Colors.transparent,),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.hight20,
              ),
              //category
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.hight30),
                child: BigText(
                  text: "category",
                  color: AppColors.blackTextColor,
                  size: Dimensions.font18,
                ),
              ),
              //vertical listView categories
              VerticalListViewCategories(
                  home: appoinmentshome, distinations: appointmentsdis),
              //suggestions
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.hight30),
                child: BigText(
                  text: "suggestions",
                  color: AppColors.blackTextColor,
                  size: Dimensions.font18,
                ),
              ),
//suggested doctors listview
              DoctorsSuggestionList(distenations: docSugDis, home: docSughome),
            ],
          ),
        ),
      ),
    );
  }
}
