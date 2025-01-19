import 'package:elite_care/controller/recordsPageSubPagesCont/testResultsController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/appColors.dart';
import '../../utils/dimentions.dart';
import '../widgets/BigText.dart';

class TestResults extends StatelessWidget {
  const TestResults({super.key});

  @override
  Widget build(BuildContext context) {
    final TestResultsController controller = Get.put(TestResultsController());
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
                          text: "Test Results",
                          color: AppColors.blueTextColor,
                          size: Dimensions.font20,
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

          SizedBox(
            height: Dimensions.hight30,
          ),
          // Search Bar
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
          // SizedBox(
          //   height: Dimentions.hight10,
          // ),
          // List of Medications
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.hight30),
              child: Obx(() {
                if (controller.filteredResults.isEmpty) {
                  return Center(
                    child: Text(
                      "No results found.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: Dimensions.font14,
                      ),
                    ),
                  );
                }
                return ListView.builder(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: controller.filteredResults.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex:10,
                              child: Column(
                                spacing: 2,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BigText(
                                    text: controller.filteredResults[index]
                                        .toString(),
                                    color: Colors.black,
                                    size: Dimensions.font20,
                                    bold: true,
                                  ),
                                  BigText(
                                    text: "Eco labs",
                                    color: AppColors.textColor,
                                    size: Dimensions.font16,
                                  ),
                                  BigText(
                                    text: "2/ 4/ 2025",
                                    color: AppColors.blackTextColor,
                                    size: Dimensions.font16,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex:12,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.print,
                                      color: AppColors.mainColor,
                                      size: Dimensions.hight34,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.share,
                                      color: AppColors.mainColor,
                                      size:  Dimensions.hight34,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.more_vert_sharp,
                                      color: AppColors.mainColor,
                                      size: Dimensions.hight34,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.hight5,
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
            height: Dimensions.hight30,
          ),
          // Edit Button
          InkWell(
            onTap: () {
              print(Dimensions.screenHight);
              /// TODO: Open Pharmacy Page
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: Dimensions.hight34),
              height: Dimensions.hight45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                color: AppColors.mainColor,
              ),
              child: Center(
                child: BigText(
                  text: "Upload Documents",
                  bold: true,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.hight30,
          ),
        ],
      ),
    );
  }
}
