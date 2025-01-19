import 'package:elite_care/view/widgets/BigText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utils/appColors.dart';
import '../../utils/dimentions.dart';

class MedicalRecords extends StatelessWidget {
  const MedicalRecords({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
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
                        child: Column(
                          children: [
                            SizedBox(
                              height: Dimensions.hight10,
                            ),
                            BigText(
                              text: "Medical Record",
                              color: AppColors.blueTextColor,
                              size: Dimensions.font20,
                              bold: true,
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            //divider
            Divider(
              thickness: Dimensions.hight10,
              color: Colors.grey.shade100,
            ),
            SizedBox(
              height: Dimensions.hight20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.hight30),
              child: Column(
                spacing: Dimensions.hight10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: "Patient Information",
                    color: AppColors.mainColor,
                    size: Dimensions.font20,
                    bold: true,
                  ),
                  //name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "Name",
                        color: AppColors.textColor,
                        size: Dimensions.font20,

                      ),
                      BigText(
                        text: "jonney something dow",
                        color: AppColors.blackTextColor,
                        size: Dimensions.font20,
                        bold: true,
                      ),

                    ],
                  ),
                  //date of birth+ height
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex:1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Date of Birth",
                              color: AppColors.textColor,
                              size: Dimensions.font20,

                            ),
                            BigText(
                              text: "26/8/2000",
                              color: AppColors.blackTextColor,
                              size: Dimensions.font20,
                              bold: true,
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        flex:1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Name",
                              color: AppColors.textColor,
                              size: Dimensions.font20,

                            ),
                            BigText(
                              text: "188 sm",
                              color: AppColors.blackTextColor,
                              size: Dimensions.font20,
                              bold: true,
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  //weight +blood type
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex:1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Weight",
                              color: AppColors.textColor,
                              size: Dimensions.font20,

                            ),
                            BigText(
                              text: "100 kg",
                              color: AppColors.blackTextColor,
                              size: Dimensions.font20,
                              bold: true,
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        flex:1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Blood Type",
                              color: AppColors.textColor,
                              size: Dimensions.font20,

                            ),
                            BigText(
                              text: "A+",
                              color: AppColors.blackTextColor,
                              size: Dimensions.font20,
                              bold: true,
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
//gender + something
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex:1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Gender",
                              color: AppColors.textColor,
                              size: Dimensions.font20,

                            ),
                            BigText(
                              text: "Male",
                              color: AppColors.blackTextColor,
                              size: Dimensions.font20,
                              bold: true,
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        flex:1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Weight",
                              color: AppColors.textColor,
                              size: Dimensions.font20,

                            ),
                            BigText(
                              text: "100 kg",
                              color: AppColors.blackTextColor,
                              size: Dimensions.font20,
                              bold: true,
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                  const Divider(color: Colors.grey,),
                  BigText(
                    text: "Insurance Information",
                    color: AppColors.mainColor,
                    size: Dimensions.font20,
                    bold: true,
                  ),
                  //company name+address
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "Insurance Company",
                        color: AppColors.textColor,
                        size: Dimensions.font20,

                      ),
                      BigText(
                        text: "delalat almawaseer ",
                        color: AppColors.blackTextColor,
                        size: Dimensions.font24,
                        bold: true,
                      ),
                      BigText(
                        text: "surag station, Omdurman, Khartoum",
                        color: AppColors.textColor,
                        size: Dimensions.font16,
                      ),
                    ],
                  ),
                  //policy number+ expiry date
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex:1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Policy Number",
                              color: AppColors.textColor,
                              size: Dimensions.font20,

                            ),
                            BigText(
                              text: "4096",
                              color: AppColors.blackTextColor,
                              size: Dimensions.font20,
                              bold: true,
                            ),

                          ],
                        ),
                      ),
                      Expanded(
                        flex:1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "Expiry Date",
                              color: AppColors.textColor,
                              size: Dimensions.font20,

                            ),
                            BigText(
                              text: "20/1/2025",
                              color: AppColors.blackTextColor,
                              size: Dimensions.font20,
                              bold: true,
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(color: Colors.grey,),
//emergency contact
                  BigText(
                    text: "Emergency Contact",
                    color: AppColors.mainColor,
                    size: Dimensions.font20,
                    bold: true,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "Name",
                        color: AppColors.textColor,
                        size: Dimensions.font20,

                      ),
                      BigText(
                        text: "Penny something dow",
                        color: AppColors.blackTextColor,
                        size: Dimensions.font20,
                        bold: true,
                      ),

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "Phone Number",
                        color: AppColors.textColor,
                        size: Dimensions.font20,

                      ),
                      BigText(
                        text: "+249991858578",
                        color: AppColors.blackTextColor,
                        size: Dimensions.font20,
                        bold: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.hight70,),
            //edite button
            InkWell(
              onTap: (){
                ///todo: edite page
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: Dimensions.hight34),
                height: Dimensions.hight45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius10),
                  color: AppColors.mainColor
                ),
                child: Center(child: BigText(text: "Edit",bold: true,),),
              ),
            ),
            SizedBox(height: Dimensions.hight30,),
          ],
        ),
      ),
    );
  }
}
