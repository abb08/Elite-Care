import 'package:elite_care/controller/home/schedulePageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/appColors.dart';
import '../../utils/dimentions.dart';
import '../widgets/BigText.dart';

class SchedulePage extends StatelessWidget {
  SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Dimentions.hight10,
        ),
        BigText(
          text: 'Schedule',
          color: AppColors.blueTextColor,
          bold: true,
        ),
        SizedBox(
          height: Dimentions.hight20,
        ),
        GetBuilder<SchedulePageController>(
            init: SchedulePageController(),
            builder: (controller) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => controller.switchTab(true),
                    child: Container(
                      height: Dimentions.schedulePageItemHight,
                      width: Dimentions.schedulePageItemWidth,
                      decoration: BoxDecoration(
                        color: controller.chosen
                            ? AppColors.mainColor
                            : AppColors.whiteColor,
                        border:
                            Border.all(width: 1, color: AppColors.mainColor),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimentions.radius10),
                            bottomLeft: Radius.circular(Dimentions.radius10)),
                      ),
                      child: Center(
                          child: BigText(
                        text: 'Upcoming',
                        bold: true,
                        color: controller.chosen
                            ? AppColors.whiteColor
                            : AppColors.mainColor,
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () => controller.switchTab(false),
                    child: Container(
                      height: Dimentions.schedulePageItemHight,
                      width: Dimentions.schedulePageItemWidth,
                      decoration: BoxDecoration(
                        color: controller.chosen == false
                            ? AppColors.mainColor
                            : AppColors.whiteColor,
                        border:
                            Border.all(width: 1, color: AppColors.mainColor),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimentions.radius10),
                            bottomRight: Radius.circular(Dimentions.radius10)),
                      ),
                      child: Center(
                          child: BigText(
                        text: 'Previous',
                        bold: true,
                        color: controller.chosen == false
                            ? AppColors.whiteColor
                            : AppColors.mainColor,
                      )),
                    ),
                  ),
                ],
              );
            }),
        SizedBox(
          height: Dimentions.hight20,
        ),
        GetBuilder<SchedulePageController>(
            init: SchedulePageController(),
            builder: (controller) {
              return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.chosen == true ? 3 : 1,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: Dimentions.hight5,
                            horizontal: Dimentions.width20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                BigText(
                                  text: 'Dr.Dracula',
                                  color: Colors.black,
                                  bold: true,
                                  size: Dimentions.font16,
                                ),
                                BigText(
                                  text: 'Dermatologist',
                                  color: Colors.black45,
                                  size: Dimentions.font16,
                                ),
                                SizedBox(
                                  height: Dimentions.hight30,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.pin_drop,
                                      color: AppColors.redPinColor,
                                    ),
                                    Text('PortSudan')
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              ///todo:figure out how to feed two models in two cases upcoming and previes also the item count but its easy
                              children: [
                                controller.chosen == true
                                    ? BigText(
                                        text: '2:30 PM',
                                        color: Colors.black,
                                        bold: true,
                                        size:Dimentions.font16,
                                      )
                                    : BigText(
                                        text: 'visited',
                                        color: Colors.green,
                                        bold: true,
                                        size: Dimentions.font26,
                                      ),
                                BigText(
                                  text: '2/8/2024',
                                  color: Colors.black45,
                                  size: Dimentions.font16,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //divider
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimentions.width10),
                        child: Divider(),
                      ),
                    ],
                  );
                },
              );
            })
      ],
    );
  }
}
