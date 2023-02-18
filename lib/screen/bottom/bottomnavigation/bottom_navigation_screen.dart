import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/screen/bottom/LightStarSpecial/light_star_special.dart';
import 'package:lightstar/screen/bottom/bottomnavigation/bottom_navigation_controller.dart';
import 'package:lightstar/screen/bottom/bottomnavigation/drawer_design.dart';
import 'package:lightstar/screen/bottom/home/home_screen.dart';
import 'package:lightstar/screen/bottom/home/subscreen/search/search_screen.dart';
import 'package:lightstar/screen/bottom/live/live_screen.dart';
import 'package:lightstar/screen/bottom/movies/movies_screen.dart';

import '../../../constants/image.dart';
import '../tv/tv_screen.dart';

class BottomNavigationScreen extends StatelessWidget {
  final NavigationController navigationController =
      Get.put(NavigationController());
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final pages = [
    HomeScreen(),
    TvScreen(),
    LightStarScreen(),
    MoviesScreen(),
    LiveScreen(),
  ];

  buildMyNavBar(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: ColorConst.black2F,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            spreadRadius: 0,
            offset: Offset(0, -8),
            color: ColorConst.black.withOpacity(0.08),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Obx(
            () => IconButton(
              enableFeedback: false,
              onPressed: () {
                navigationController.pageIndex.value = 0;
              },
              icon: navigationController.pageIndex.value == 0
                  ? SvgPicture.asset(ImageConst.homeFill)
                  : SvgPicture.asset(ImageConst.home),
            ),
          ),
          Obx(
            () => IconButton(
              enableFeedback: false,
              onPressed: () {
                navigationController.pageIndex.value = 1;
              },
              icon: navigationController.pageIndex.value == 1
                  ? SvgPicture.asset(ImageConst.tvFill)
                  : SvgPicture.asset(ImageConst.tvIcon),
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              navigationController.pageIndex.value = 2;
            },
            icon: Text(""),
          ),
          Obx(
            () => IconButton(
              enableFeedback: false,
              onPressed: () {
                navigationController.pageIndex.value = 3;
              },
              icon: navigationController.pageIndex.value == 3
                  ? SvgPicture.asset(ImageConst.filmSlateFill)
                  : SvgPicture.asset(ImageConst.filmSlate),
            ),
          ),
          Obx(
            () => IconButton(
                enableFeedback: false,
                onPressed: () {
                  navigationController.pageIndex.value = 4;
                },
                icon: navigationController.pageIndex.value == 4
                    ? SvgPicture.asset(ImageConst.liveFill)
                    : SvgPicture.asset(ImageConst.live)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: DrawerDesign(),
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            scaffoldKey.currentState!.openDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              ImageConst.menu,
            ),
          ),
        ),
        title: SvgPicture.asset(ImageConst.appLogo),
        actions: [
          InkWell(
            onTap: () {
              Get.to(() => SearchScreen());
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(CupertinoIcons.search),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        height: 72,
        width: 72,
        margin: EdgeInsets.only(bottom: 30),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorConst.black2F,
          boxShadow: [
            BoxShadow(
              blurRadius: 16,
              spreadRadius: 0,
              offset: Offset(0, -8),
              color: ColorConst.black.withOpacity(0.08),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(
            onPressed: () {
              navigationController.pageIndex.value = 2;

              Get.off(() => BottomNavigationScreen());

              /* Navigator.of(context, rootNavigator: true)
                  .pushReplacement(MaterialPageRoute(
                builder: (context) => NavigationBarBottom(),
              )); */
            },
            child: SvgPicture.asset(ImageConst.shop),
            elevation: 0,
            backgroundColor: ColorConst.butColor,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Obx(
        () => Stack(
          alignment: Alignment.bottomCenter,
          children: [
            pages[navigationController.pageIndex.value],
            buildMyNavBar(context),
          ],
        ),
      ),
    );
  }
}
