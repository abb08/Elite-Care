import 'package:elite_care/utils/appColors.dart';
import 'package:elite_care/view/widgets/BigText.dart';
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
                      child: InkWell(
                          onTap: () {
                            Get.toNamed(RouteHelpler.patientProfile);
                          },
                          child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.chevron_left_sharp,
                              size: Dimentions.hight70,
                              color: AppColors.blueTextColor,
                            ),
                          )),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: Dimentions.hight20, bottom: Dimentions.hight5),
                        child: SvgPicture.asset(
                          'assets/images/logo.svg',
                          fit: BoxFit.contain,
                          height: Dimentions.hight45,
                          width: Dimentions.hight45,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //divider
              Divider(
                thickness: Dimentions.hight10,
                color: Colors.grey.shade100,
              ),
              Container(
                //color: Colors.red,
                height: Dimentions.profileContainerHight,
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(left: Dimentions.hight5),
                          width: Dimentions.profilePictureHight,
                          height: Dimentions.profilePictureHight,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: Dimentions.width3,
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
                            size: Dimentions.font26,
                          ),
                          BigText(
                            text: 'Patient Account',
                            color: AppColors.textColor,
                            bold: true,
                            size: Dimentions.font16,
                          ),
                          BigText(
                            text: 'portsudan \\ dem madina',
                            color: AppColors.textColor,
                            size: Dimentions.font16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                    padding: EdgeInsets.only(right: Dimentions.hight10),
                    child: InkWell(
                      onTap: (){

                      },
                      child: BigText(
                        text: 'edite account',
                        color: Colors.blue,
                        size: Dimentions.font16,
                      ),
                    )),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
