import 'package:elite_care/controller/paitnetProfileCont.dart';
import 'package:elite_care/utils/appColors.dart';
import 'package:elite_care/view/widgets/BigText.dart';
import 'package:elite_care/view/widgets/patientWidgets/previousWidget.dart';
import 'package:elite_care/view/widgets/patientWidgets/upcomingWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:get/get.dart';

import '../../routes/routes_helper.dart';
import '../../utils/dimentions.dart';

class Patientprofile extends StatelessWidget {
  const Patientprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.chevron_left_sharp,
                          size: Dimensions.hight70,
                          color: AppColors.blueTextColor,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: Dimensions.hight20, bottom: Dimensions.hight5),
                        child: SvgPicture.asset(
                          'assets/images/logo.svg',
                          fit: BoxFit.contain,
                          height: Dimensions.hight45,
                          width: Dimensions.hight45,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //divider
              Divider(
                thickness: Dimensions.hight10,
                color: Colors.grey.shade100,
              ),
              Container(
                //color: Colors.red,
                height: Dimensions.profileContainerHight,
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(left: Dimensions.hight5),
                          width: Dimensions.profilePictureHight,
                          height: Dimensions.profilePictureHight,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: Dimensions.width3,
                                color: AppColors.textColor),
                            shape: BoxShape.circle,
                            color: AppColors.secondColor,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Recovered_jpg_file(7774).jpg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BigText(
                            text: 'Jenny Old Stones',
                            color: AppColors.mainColor,
                            bold: true,
                            size: Dimensions.font26,
                          ),
                          BigText(
                            text: 'Patient Account',
                            color: AppColors.textColor,
                            bold: true,
                            size: Dimensions.font16,
                          ),
                          BigText(
                            text: 'portsudan \\ dem madina',
                            color: AppColors.textColor,
                            size: Dimensions.font16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              ///todo: if case for language for this and the one under
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                    padding: EdgeInsets.only(right: Dimensions.hight10),
                    child: InkWell(
                      onTap: () {},
                      child: BigText(
                        text: 'edite account',
                        color: Colors.blue,
                        size: Dimensions.font16,
                      ),
                    )),
              ),
              Divider(),
              SizedBox(
                height: Dimensions.hight20,
              ),
              GetBuilder<PaitnetProfileCont>(
                  init: PaitnetProfileCont(),
                  builder: (controller) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => controller.switchTab(true),
                          child: Container(
                            height: Dimensions.schedulePageItemHight,
                            width: Dimensions.schedulePageItemWidth,
                            decoration: BoxDecoration(
                              color: controller.chosen
                                  ? AppColors.mainColor
                                  : AppColors.whiteColor,
                              border:
                              Border.all(width: 1, color: AppColors.mainColor),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(Dimensions.radius10),
                                  bottomLeft: Radius.circular(Dimensions.radius10)),
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
                            height: Dimensions.schedulePageItemHight,
                            width: Dimensions.schedulePageItemWidth,
                            decoration: BoxDecoration(
                              color: controller.chosen == false
                                  ? AppColors.mainColor
                                  : AppColors.whiteColor,
                              border:
                              Border.all(width: 1, color: AppColors.mainColor),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(Dimensions.radius10),
                                  bottomRight: Radius.circular(Dimensions.radius10)),
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
                height: Dimensions.hight20,
              ),
              GetBuilder<PaitnetProfileCont>(
                  init: PaitnetProfileCont(),
                  builder: (controller) {
                    return ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.chosen == true ? 3 : 5,///todo:dynamic item counts 3:chosen ,1:unchosen
                      itemBuilder: (BuildContext context, int index) {
                        return controller.chosen == true ? UpcomingWidget(): PreviousWidget()  ;
                      },
                    );
                  })

            ],
          ),
        ),
      ),
    );
  }
}

//previes widget :lib/view/widgets/patientWidgets/previousWidget.dart


//upcoming widget :lib/view/widgets/patientWidgets/upcomingWidget.dart