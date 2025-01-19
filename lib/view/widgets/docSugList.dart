import 'package:elite_care/view/widgets/ratingStarsView.dart';
import 'package:flutter/material.dart';

import '../../utils/appColors.dart';
import '../../utils/dimentions.dart';
import 'package:get/get.dart';
import 'BigText.dart';

class DoctorsSuggestionList extends StatelessWidget {
  List<Map<dynamic, String>> home;
  Map<String, String> distenations;

  DoctorsSuggestionList(
      {super.key, required this.distenations, required this.home});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.hight15),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: home.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed(distenations[home[index]['name']]!);
                },
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //doc image
                      Container(
                        height: Dimensions.hight100 * 1.2,
                        width: Dimensions.hight100 * 1.2,
                        decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius10),
                            image: DecorationImage(
                                image: AssetImage(home[index]['img']!),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: Dimensions.width20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: Dimensions.hight100 * 1.5,
                            child: BigText(
                              text: home[index]['name']!,
                              bold: true,
                              color: AppColors.blackTextColor,
                              size: Dimensions.font20,
                            ),
                          ),
                          BigText(
                            text: 'somethingologist',
                            color: AppColors.textColor,
                            size: Dimensions.font16,
                          ),
                          BigText(
                            text: ' almatar ',
                            color: AppColors.textColor,
                            size: Dimensions.font16,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: Dimensions.width20,
                      ),
                      SizedBox(
                        height: Dimensions.hight100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: Dimensions.hight40,
                              width: Dimensions.hight40,
                              decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radius10),
                                  image: DecorationImage(
                                      image: AssetImage(home[index]['icon']!),)),
                            ),
                            RatingStarsView(
                              rating: 3,///todo:implement dynamic rating
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: Dimensions.hight15,),
              Divider(
                thickness: 1,
                color: Colors.grey.withOpacity(.2),
              ),
            ],
          );
        },
      ),
    );
  }
}
