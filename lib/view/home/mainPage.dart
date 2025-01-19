import 'package:elite_care/localization/localController.dart';
import 'package:elite_care/routes/routes_helper.dart';
import 'package:elite_care/utils/appColors.dart';
import 'package:elite_care/utils/dimentions.dart';
import 'package:elite_care/view/home/more.dart';
import 'package:elite_care/view/home/records.dart';
import 'package:elite_care/view/home/schedule.dart';
import 'package:elite_care/view/home/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:get/get.dart';
import '../../controller/home/mainPageCont.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home.dart';

///todo:main services
///todo:booking section
///todo:h-listview popular hospitals
///todo: advertisment secton // future
///todo:h-listview popular spicialization
///todo:bottom navigation bar(to bast ops/personal account)

class MainPage extends StatelessWidget {
  final MainPageController mainPagecont =
      Get.put(MainPageController(), permanent: true);

  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    //pages list
    List<Widget> pages = [
      HomePage(),
      ServicesPage(),
      SchedulePage(),
      RecordsPage(),
      MorePage(),
    ];

    Get.put(LocalController(), permanent: true); //localization
    /// todo: inject the dependancy in the right place so that even the
    /// onboarding is on board on this or just put it to default as the
    /// phone's language
    LocalController localController = Get.find(); // this one for the buttons
    return GetBuilder<MainPageController>(builder: (cont) {
      return SafeArea(
        child: Obx(()=>Scaffold(
          backgroundColor: AppColors.whiteColor,
          body: Padding(
            padding: EdgeInsets.only(
                left: Dimensions.hight5,
                right: Dimensions.hight5,
                top: Dimensions.hight5),
            child: Column(
              children: [
                //AppBar
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(RouteHelpler.patientProfile);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: Dimensions.hight5),
                        width: Dimensions.hight50,
                        height: Dimensions.hight50,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: Dimensions.width3, color: AppColors.secondColor),
                            shape: BoxShape.circle,
                            color: AppColors.secondColor,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Recovered_jpg_file(7774).jpg'),
                                fit: BoxFit.contain)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Dimensions.hight5),
                      child: cont.pageIndex == 0
                          ? Container(
                        height: Dimensions.hight60,
                        width: Dimensions.width100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: SvgPicture.asset(
                                'assets/images/logo.svg',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: SvgPicture.asset(
                                'assets/images/ecoree.svg',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      )
                          : SvgPicture.asset(
                        'assets/images/logo.svg',
                        fit: BoxFit.contain,
                        height: Dimensions.hight45,
                        width: Dimensions.hight45 ,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        ///todo:go to notifications
                      },
                      icon: Icon(Icons.notifications),
                      iconSize: Dimensions.hight50,
                      color: AppColors.secondColor,
                    ),
                  ],
                ),
                //divider
                SizedBox(
                  height: Dimensions.hight10,
                ),
                //MainBage from list
                Expanded(
                  child: SingleChildScrollView(child: pages[cont.pageIndex]),
                )
              ],
            ),
          ),
          //bottom navigation bar
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cont.pageIndex,
              backgroundColor: AppColors.mainColor,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              selectedLabelStyle: TextStyle(
                fontSize: Dimensions.font16, // Increased font size for selected labels
                fontWeight: FontWeight.bold, // Bold for emphasis
              ),
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.font16, // Same size for consistency
              ),
              iconSize: Dimensions.iconSize30,
              onTap: (index) {
                print(Get.height.toString());
                print(Get.width.toString());
                mainPagecont.updateIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: _buildIcon(
                      'assets/icons/homeicon.svg', 0, cont.pageIndex),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: _buildIcon(
                      'assets/icons/medichand.svg', 1, cont.pageIndex),
                  label: "Services",
                ),
                BottomNavigationBarItem(
                  icon: _buildIcon(
                      'assets/icons/calender.svg', 2, cont.pageIndex),
                  label: "Schedule",
                ),
                BottomNavigationBarItem(
                  icon: _buildIcon(
                      'assets/icons/recordsicon.svg', 3, cont.pageIndex),
                  label: "Records",
                ),
                BottomNavigationBarItem(
                  icon: _buildIcon(
                      'assets/icons/moreicon.svg', 4, cont.pageIndex),
                  label: "More",
                ),
              ],
            ),
          ),
        ),),
      );
    });
  }
}

//bottom navigation bar icon
Widget _buildIcon(String assetPath, int index, int selectedIndex) {
  bool isSelected = index == selectedIndex;

  return Stack(
    alignment: Alignment.center,
    children: [
      if (isSelected)
        Container(
          width: Dimensions.hight50,
          height: Dimensions.hight50,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      SvgIcon(
        responsiveColor: false,
        icon: SvgIconData(assetPath),
        color: isSelected ? AppColors.mainColor : AppColors.whiteColor,
      ),
    ],
  );
}
//pages[cont.pageIndex],
