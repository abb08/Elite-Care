import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/recordsPageSubPagesCont/medicationsController.dart';
import '../../utils/appColors.dart';
import '../../utils/dimentions.dart';
import '../widgets/BigText.dart';

class MedicationPage extends StatelessWidget {
  const MedicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the MedicationsController
    final MedicationsController controller = Get.put(MedicationsController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // AppBar
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
                      size: Dimentions.hight70,
                      color: AppColors.blueTextColor,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: Dimentions.hight20, bottom: Dimentions.hight5),
                    child: Column(
                      children: [
                        SizedBox(
                          height: Dimentions.hight10,
                        ),
                        BigText(
                          text: "Medications",
                          color: AppColors.blueTextColor,
                          size: Dimentions.font20,
                          bold: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Divider
          Divider(
            thickness: Dimentions.hight10,
            color: Colors.grey.shade100,
          ),
          SizedBox(
            height: Dimentions.hight20,
          ),
          // Search Bar
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimentions.hight30),
            child: Container(
              height: Dimentions.hight45,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: Dimentions.width3,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(Dimentions.radius10),
              ),
              child: TextField(
                controller: controller.textController,
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
                      controller.textController.clear();
                    },
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Dimentions.hight10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:Dimentions.hight10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: Dimentions.hight10),
                  height: Dimentions.hight45,
                  width: Dimentions.hight70,
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(Dimentions.radius20)),
                  child: Center(
                      child: BigText(
                    text: "all",
                    bold: true,size: Dimentions.font20,
                  )),
                ),
                IconButton(onPressed: () {},
                    icon: Icon(Icons.dehaze,size: Dimentions.hight50,color: AppColors.mainColor,))
              ],
            ),
          ),
          // SizedBox(
          //   height: Dimentions.hight10,
          // ),
          // List of Medications
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimentions.hight30),
              child: Obx(() {
                if (controller.filteredMedications.isEmpty) {
                  return Center(
                    child: Text(
                      "No medications found.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: Dimentions.font14,
                      ),
                    ),
                  );
                }
                return ListView.builder(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: controller.filteredMedications.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              spacing: 2,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(
                                  text: controller.filteredMedications[index]
                                      .toString(),
                                  color: Colors.black,
                                  size: Dimentions.font20,
                                  bold: true,
                                ),
                                BigText(
                                  text: "200 ml",
                                  color: AppColors.textColor,
                                  size: Dimentions.font16,
                                ),
                                BigText(
                                  text: "2/4/2025",
                                  color: AppColors.blackTextColor,
                                  size: Dimentions.font16,
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.more_vert_sharp,
                                color: AppColors.mainColor,
                                size: Dimentions.hight50,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimentions.hight5,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey.withOpacity(.2),
                        ),
                      ],
                    );
                  },
                );
              }),
            ),
          ),
          SizedBox(
            height: Dimentions.hight30,
          ),
          // Edit Button
          InkWell(
            onTap: () {
              /// TODO: Open Pharmacy Page
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: Dimentions.hight34),
              height: Dimentions.hight45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimentions.radius10),
                color: AppColors.mainColor,
              ),
              child: Center(
                child: BigText(
                  text: "Open Pharmacy",
                  bold: true,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Dimentions.hight30,
          ),
        ],
      ),
    );
  }
}

/*
*
* ListTile(
                      leading:
                      trailing: */
