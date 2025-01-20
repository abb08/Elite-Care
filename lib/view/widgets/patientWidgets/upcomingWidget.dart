import 'package:elite_care/utils/appColors.dart';
import 'package:elite_care/utils/dimentions.dart';
import 'package:elite_care/view/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes_helper.dart';

class UpcomingWidget extends StatelessWidget {
  const UpcomingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      ),
      margin: EdgeInsets.symmetric(
          horizontal: Dimensions.hight10, vertical: Dimensions.hight10),
      padding: EdgeInsets.all(Dimensions.hight10),
      height: Dimensions.profileContainerHight,
      child: Column(
        children: [
          //pic name sp button
          Row(
            children: [
              //doc image
              Container(
                height: Dimensions.hight100,
                width: Dimensions.hight100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(Dimensions.radius10),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/Recovered_jpg_file(7774).jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: Dimensions.width20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: 'Dr.Jafar Abdalla',
                    bold: true,
                    color: AppColors.blackTextColor,
                    size: Dimensions.font20,
                  ),
                  BigText(
                    text: 'somethingologist',
                    color: AppColors.textColor,
                    size: Dimensions.font16,
                  ),
                  BigText(
                    text: 'Port Sudan / almatar ',
                    color: AppColors.textColor,
                    size: Dimensions.font16,
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                height: Dimensions.hight100,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(RouteHelpler.unKnown);
                        ///todo:ontap for sp button
                      },
                      child: Container(
                        height: Dimensions.hight34,
                        width: Dimensions.hight34,
                        decoration: BoxDecoration(
                          color: AppColors.blueTextColor,
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius10),
                        ),
                        child: Center(
                            child: BigText(
                          text: 'SP',
                          bold: true,
                          size: Dimensions.font16,
                        )),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: Dimensions.hight10,
          ),
          //location
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: Dimensions.width45,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(RouteHelpler.unKnown);
                  ///todo:clinic location
                },
                child: BigText(
                  text: "Get clinic location",
                  color: AppColors.mainColor,
                  size: Dimensions.font20,
                  bold: true,
                ),
              ),
              SizedBox(
                width: Dimensions.width3,
              ),
              Icon(
                Icons.pin_drop,
                color: AppColors.redPinColor,
                size: Dimensions.iconSize24,
              )
            ],
          ),
          SizedBox(
            height: Dimensions.hight20,
          ),
          //time
          Row(
            children: [
              Container(
                height: Dimensions.hight34,
                width: Dimensions.hight100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.hight5),
                  color: AppColors.blueTextColor,
                ),
                child: Center(
                  child: BigText(
                    text: "wednesday",
                    size: Dimensions.font14,
                    bold: true,
                  ),
                ),
              ),
              SizedBox(
                width: Dimensions.width15,
              ),
              Container(
                height: Dimensions.hight34,
                width: Dimensions.hight100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.hight5),
                  color: AppColors.blueTextColor,
                ),
                child: Center(
                  child: BigText(
                    text: "10:30 AM",
                    size: Dimensions.font14,
                    bold: true,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                  onTap: () {
                    Get.toNamed(RouteHelpler.unKnown);
                    ///todo:edite booking
                  },
                  child: BigText(
                    text: "Edite your Booking",
                    size: Dimensions.font16,
                    color: AppColors.textColor,
                    bold: true,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
