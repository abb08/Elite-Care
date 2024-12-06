/*
appBar: PreferredSize(
preferredSize: Size.fromHeight(Get.height/12),
child: AppBar(
centerTitle: true,
backgroundColor: Colors.transparent,
leading: Align(
alignment: Alignment.center,
child: InkWell(
onTap: () {
///todo:go to profile
},
child: Container(
width: 50,
height: 50,
decoration: BoxDecoration(
border:
Border.all(width: 5, color: AppColors.secondColor),
shape: BoxShape.circle,
color: AppColors.secondColor,
image: DecorationImage(
image: AssetImage(
'assets/images/Recovered_jpg_file(7774).jpg'),
fit: BoxFit.fill)),
),
),
),
title: Padding(padding: EdgeInsets.all(5),
child: cont.pageIndex == 0
? Column(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [SvgPicture.asset('assets/images/logo.svg'
,fit: BoxFit.contain,height: 10,),
SvgPicture.asset('assets/images/ecare.svg'
,fit: BoxFit.contain,),],
)
    : SvgPicture.asset('assets/images/logo.svg'
,fit: BoxFit.contain,width: 20,),
),
actions: [
IconButton(
onPressed: () {
///todo:go to notifications
},
icon: Icon(Icons.notifications),
iconSize: 40,
color: AppColors.secondColor,
),
]),
),



pages[cont.
pageIndex
],

*/


/*
*
* import 'package:elite_care/localization/localController.dart';
import 'package:elite_care/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';
import 'package:get/get.dart';
import '../../controller/mainPageCont.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home.dart';

///todo:main services
///todo:booking section
///todo:h-listview popular hospitals
///todo: advertisment secton // future
///todo:h-listview popular spicialization
///todo:bottom navigation bar(to bast ops/personal account)

class HomePage extends StatelessWidget {
  final MainPageController mainPagecont =
      Get.put(MainPageController(), permanent: true);

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Home(),
      Center(
          child: Container(
        child: Text("1"),
      )),
      Center(
          child: Container(
        child: Text("2"),
      )),
      Center(
          child: Container(
        child: Text("3"),
      )),
      Center(
          child: Container(
        child: Text("4"),
      )),
    ];

    Get.put(LocalController(), permanent: true); //localization
    /// todo: inject the dependancy in the right place so that even the
    /// onboarding is on board on this or just put it to default as the
    /// phone's language
    LocalController localController = Get.find(); // this one for the buttons
    return GetBuilder<MainPageController>(builder: (cont) {
      return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.whiteColor,
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
                selectedLabelStyle: const TextStyle(
                  fontSize: 15, // Increased font size for selected labels
                  fontWeight: FontWeight.bold, // Bold for emphasis
                ),
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15, // Same size for consistency
                ),
                iconSize: 30,
                onTap: (index) {
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
                    label: "MediCare",
                  ),
                  BottomNavigationBarItem(
                    icon: _buildIcon(
                        'assets/icons/calender.svg', 2, cont.pageIndex),
                    label: "Records",
                  ),
                  BottomNavigationBarItem(
                    icon: _buildIcon(
                        'assets/icons/recordsicon.svg', 3, cont.pageIndex),
                    label: "More",
                  ),
                  BottomNavigationBarItem(
                    icon: _buildIcon(
                        'assets/icons/moreicon.svg', 4, cont.pageIndex),
                    label: "Account",
                  ),
                ],
              ),
            ),
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  leading: Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        ///todo:go to profile
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 5, color: AppColors.secondColor),
                            shape: BoxShape.circle,
                            color: AppColors.secondColor,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Recovered_jpg_file(7774).jpg'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ),
                  title: Padding(
                    padding: EdgeInsets.all(10),
                    child: cont.pageIndex == 0
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                'assets/images/logo.svg',
                                fit: BoxFit.contain,
                                height: 30,
                              ),
                              SvgPicture.asset(
                                'assets/images/ecare.svg',
                                fit: BoxFit.contain,
                              ),
                            ],
                          )
                        : SvgPicture.asset(
                            'assets/images/logo.svg',
                            fit: BoxFit.contain,
                            width: 20,
                          ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {
                        ///todo:go to notifications
                      },
                      icon: Icon(Icons.notifications),
                      iconSize: 40,
                      color: AppColors.secondColor,
                    ),
                  ],
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                ),
                SliverFillRemaining(
                  child: pages[cont.
                  pageIndex
                  ],
                )
              ],
            ),

        ),
      );
    });
  }
}

Widget _buildIcon(String assetPath, int index, int selectedIndex) {
  bool isSelected = index == selectedIndex;

  return Stack(
    alignment: Alignment.center,
    children: [
      if (isSelected)
        Container(
          width: 55,
          height: 55,
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
*/