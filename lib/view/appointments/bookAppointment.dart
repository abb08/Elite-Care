import 'dart:math';

import 'package:elite_care/controller/appointment/bookAppointmentController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes_helper.dart';
import '../../utils/appColors.dart';
import '../../utils/dimentions.dart';
import '../widgets/BigText.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //appbar
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
                      text: "appointments",
                      color: AppColors.blueTextColor,
                      bold: true,
                      size: Dimensions.font24,
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
            //profile image
            Container(
              margin: EdgeInsets.only(left: Dimensions.hight5),
              width: Dimensions.hight100 * 1.8,
              height: Dimensions.hight100 * 1.8,
              decoration: BoxDecoration(
                border: Border.all(
                    width: Dimensions.hight5, color: AppColors.mainColor),
                shape: BoxShape.circle,
                color: AppColors.secondColor,
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/docssugg/ss.png'),
                    fit: BoxFit.contain),
              ),
            ),
            SizedBox(
              height: Dimensions.hight10,
            ),
            //name
            BigText(
              text: "Dr.jafar duo",
              color: AppColors.blackTextColor,
            ),
            BigText(
              text: "Dermatologist",
              color: AppColors.textColor,
              size: Dimensions.font16,
            ),
            SizedBox(
              height: Dimensions.hight15,
            ),
            //charts
            Container(
              height: Dimensions.hight100,
              margin: EdgeInsets.symmetric(horizontal: Dimensions.width45),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(Dimensions.radius10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: Dimensions.hight70,
                    width: Dimensions.hight100,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigText(
                          text: "256+",
                          color: Colors.green,
                          bold: true,
                        ),
                        BigText(
                          text: "patients",
                          color: AppColors.textColor,
                          size: Dimensions.font18,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: Dimensions.hight70,
                    width: Dimensions.hight100,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigText(
                          text: "8+",
                          color: Colors.black,
                          bold: true,
                        ),
                        BigText(
                          text: "years exp",
                          color: AppColors.textColor,
                          size: Dimensions.font18,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: Dimensions.hight70,
                    width: Dimensions.hight100,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigText(
                          text: "256+",
                          color: AppColors.blueTextColor,
                          bold: true,
                        ),
                        BigText(
                          text: "reviews",
                          color: AppColors.textColor,
                          size: Dimensions.font18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.hight10,
            ),
            //about
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Dimensions.hight20),
                    child: BigText(
                      text: "About",
                      color: AppColors.blackTextColor,
                      bold: true,
                    ))),
            //discription
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.hight30, vertical: Dimensions.hight5),
              child: BigText(
                text:
                    " Dr. whatever whatever is  a decent whatever doctor that works at whatever hospital located in whatever, whatever street.",
                color: AppColors.textColor,
                size: Dimensions.font18,
                maxLines: 4,
              ),
            ),
            //schedule
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.hight20),
                child: BigText(
                  text: "Schedule",
                  color: AppColors.blackTextColor,
                  bold: true,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(
                  vertical: Dimensions.hight10,
                ),
                width: double.infinity,
                height: Dimensions.hight100 * 1.5,
                child: GetBuilder<BookAppointmentController>(
                    init: BookAppointmentController(),
                    builder: (controller) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: AlwaysScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                controller.updateSchedule(index);
                                // Get.toNamed(
                                //distinations[home[index]['title']]!                            );
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: Dimensions.hight10),
                                width: Dimensions.screenHight / 8.508333333,
                                height: Dimensions.screenHight / 8.508333333,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: controller.chosenSchedule == index
                                        ? AppColors.whiteColor
                                        : AppColors.blackTextColor,
                                  ),
                                  color: controller.chosenSchedule == index
                                      ? AppColors.mainColor
                                      : AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radius10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: Dimensions.hight10),
                                            child: BigText(
                                              text: "Wed",
                                              size: Dimensions.font20,
                                              color: controller
                                                          .chosenSchedule ==
                                                      index
                                                  ? AppColors.whiteColor
                                                  : AppColors.blackTextColor,
                                            ))),
                                    BigText(
                                      text: "18",
                                      size: Dimensions.font30 * 1.5,
                                      bold: true,
                                      color: controller.chosenSchedule == index
                                          ? AppColors.whiteColor
                                          : AppColors.blackTextColor,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    })),
            SizedBox(
              height: Dimensions.hight10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.hight20),
                child: BigText(
                  text: "Visit Hours",
                  color: AppColors.blackTextColor,
                  bold: true,
                ),
              ),
            ),
            GetBuilder<BookAppointmentController>(builder: (cont) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.hight15),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (10 / 4),
                    crossAxisCount:
                        max((Dimensions.screenWidth / 250).toInt(), 4),
                    // number of items in each row
                    mainAxisSpacing: Dimensions.hight10,
                    // spacing between rows
                    crossAxisSpacing:
                        Dimensions.hight10, // spacing between columns
                  ),
                  padding: EdgeInsets.all(10),
                  // padding around the grid
                  itemCount: 8,
                  // total number of items
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        cont.updateTime(index);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: cont.chosenTime == index
                              ? AppColors.mainColor
                              : AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Center(
                          child: BigText(
                            text: "09:00 PM",
                            color: Colors.black,
                            size: Dimensions.font16,
                            bold: true,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            }),
            SizedBox(
              height: Dimensions.hight40,
            ),
            InkWell(
              onTap: () {
                Get.defaultDialog(
                  backgroundColor: Colors.white,
                  title: '',
                  content: BigText(
                    text: "Appointment requested Successfully",
                    size: Dimensions.font18,
                    bold: true,
                    maxLines: 2,
                    color: AppColors.blackTextColor,
                  ),
                  confirm: MaterialButton(
                    child: BigText(
                      text: "Ok",
                      size: Dimensions.font18,
                      bold: true,
                      color: AppColors.blackTextColor,
                    ),
                    onPressed: Get.back,
                  ),
                );
              },
              child: Container(
                height: Dimensions.hight50,
                margin: EdgeInsets.symmetric(horizontal: Dimensions.hight50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius10),
                    color: AppColors.mainColor),
                child: Center(
                  child: BigText(
                    text: "Book Appointment",
                    bold: true,
                    size: Dimensions.font24,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.hight20,
            ),
          ],
        ),
      ),
    ));
  }
}
