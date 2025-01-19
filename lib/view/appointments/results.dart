import 'package:elite_care/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/dummy/docSuggestions.dart';
import '../../routes/routes_helper.dart';
import '../../utils/dimentions.dart';
import '../widgets/BigText.dart';
import '../widgets/docSugList.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                    child: BigText(
                      text: "Results",
                      color: AppColors.blueTextColor,
                      bold: true,
                      size: Dimensions.font30,
                    )),
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
              height: Dimensions.hight50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.hight30),
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
                 // controller: controller.textController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: AppColors.mainColor,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.clear_rounded,
                        color: AppColors.mainColor,
                      ),
                      onPressed: () {
                      //  controller.textController.clear();
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.hight10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:Dimensions.hight10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: Dimensions.hight10),
                    height: Dimensions.hight45,
                    width: Dimensions.hight70,
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(Dimensions.radius20)),
                    child: Center(
                        child: BigText(
                          text: "all",
                          bold: true,size: Dimensions.font20,
                        )),
                  ),
                  IconButton(onPressed: () {},
                      icon: Icon(Icons.dehaze,size: Dimensions.hight50,color: AppColors.mainColor,))
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.hight10,
            ),
            DoctorsSuggestionList(distenations: docSugDis, home: docSughome),
          ],
        ),
      ),
    ));
  }
}
