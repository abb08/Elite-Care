import 'package:elite_care/utils/appColors.dart';
import 'package:elite_care/utils/dimentions.dart';
import 'package:elite_care/view/widgets/BigText.dart';
import 'package:flutter/material.dart';

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
            blurRadius: Dimentions.width3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(
          horizontal: Dimentions.hight10, vertical: Dimentions.hight10),
      padding: EdgeInsets.all(Dimentions.hight10),
      height: Dimentions.profileContainerHight,
      child: Column(
        children: [
          //pic name sp button
          Row(
            children: [
              //doc image
              Container(
                height: Dimentions.hight100,
                width: Dimentions.hight100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(Dimentions.radius10),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/Recovered_jpg_file(7774).jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: Dimentions.width20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: 'Dr.Jafar Abdalla',
                    bold: true,
                    color: AppColors.blackTextColor,
                    size: Dimentions.font20,
                  ),
                  BigText(
                    text: 'somethingologist',
                    color: AppColors.textColor,
                    size: Dimentions.font16,
                  ),
                  BigText(
                    text: 'Port Sudan / almatar ',
                    color: AppColors.textColor,
                    size: Dimentions.font16,
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                height: Dimentions.hight100,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        ///todo:ontap for sp button
                      },
                      child: Container(
                        height: Dimentions.hight34,
                        width: Dimentions.hight34,
                        decoration: BoxDecoration(
                          color: AppColors.blueTextColor,
                          borderRadius:
                              BorderRadius.circular(Dimentions.radius10),
                        ),
                        child: Center(
                            child: BigText(
                          text: 'SP',
                          bold: true,
                          size: Dimentions.font16,
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
            height: Dimentions.hight10,
          ),
          //location
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: Dimentions.width45,
              ),
              InkWell(
                onTap: () {
                  ///todo:clinic location
                },
                child: BigText(
                  text: "Get clinic location",
                  color: AppColors.mainColor,
                  size: Dimentions.font20,
                  bold: true,
                ),
              ),
              SizedBox(
                width: Dimentions.width3,
              ),
              Icon(
                Icons.pin_drop,
                color: AppColors.redPinColor,
                size: Dimentions.iconSize24,
              )
            ],
          ),
          SizedBox(
            height: Dimentions.hight20,
          ),
          //time
          Row(
            children: [
              Container(
                height: Dimentions.hight34,
                width: Dimentions.hight100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimentions.hight5),
                  color: AppColors.blueTextColor,
                ),
                child: Center(
                  child: BigText(
                    text: "wednesday",
                    size: Dimentions.font14,
                    bold: true,
                  ),
                ),
              ),
              SizedBox(
                width: Dimentions.width15,
              ),
              Container(
                height: Dimentions.hight34,
                width: Dimentions.hight100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimentions.hight5),
                  color: AppColors.blueTextColor,
                ),
                child: Center(
                  child: BigText(
                    text: "10:30 AM",
                    size: Dimentions.font14,
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
                    ///todo:edite booking
                  },
                  child: BigText(
                    text: "Edite your Booking",
                    size: Dimentions.font16,
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
