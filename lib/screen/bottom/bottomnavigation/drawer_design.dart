import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/Help/help_screen.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/Prefrences/preferences_screen.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/Watchlist/watchlist_screen.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/download/download_screen.dart';
import 'package:lightstar/screen/bottom/MyAccount/my_account_screen.dart';
import 'package:lightstar/screen/bottom/bottomnavigation/controller/drawer_cotroller.dart';

class DrawerDesign extends StatelessWidget {
  final DrawerDesignController drawerController =
      Get.put(DrawerDesignController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: ColorConst.appColor, //<-- SEE HERe
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "Devon Lane",
                style: TextStyleClass.sourceSansProBold(
                  size: 16.0,
                ),
              ),
              onTap: (){
                Get.to(MyAccountScreen());
              },
              subtitle: Text(
                "+91 12345 67890",
                style: TextStyleClass.sourceSansProRegular(
                  size: 12.0,
                  color: ColorConst.grey8A,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: ColorConst.white,
                size: 12.0,
              ),
            ),
            Container(
              color: ColorConst.grey3A,
              child: ListTile(
                title: Text(
                  "KIDS Safe",
                  style: TextStyleClass.sourceSansProSemiBold(
                    size: 16.0,
                  ),
                ),
                trailing: Obx(
                  () => Transform.scale(
                    scale: 0.8,
                    child: CupertinoSwitch(
                      value: drawerController.wifi.value,
                      trackColor: ColorConst.greyB0,
                      activeColor: ColorConst.butColor,
                      onChanged: (bool value) {
                        drawerController.wifi.value = value;
                      },
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(() => DownloadScreen());
              },
              title: Text(
                "Downloads",
                style: TextStyleClass.sourceSansProBold(
                  size: 16.0,
                ),
              ),
              subtitle: Text(
                "Watch videos offline",
                style: TextStyleClass.sourceSansProRegular(
                  size: 12.0,
                  color: ColorConst.grey8A,
                ),
              ),
              minLeadingWidth: 20,
              leading: Icon(
                Icons.download_for_offline_rounded,
                color: ColorConst.white,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(() => WatchlistScreen());
              },
              title: Text(
                "Watch list",
                style: TextStyleClass.sourceSansProBold(
                  size: 16.0,
                ),
              ),
              subtitle: Text(
                "Save to watch later",
                style: TextStyleClass.sourceSansProRegular(
                  size: 12.0,
                  color: ColorConst.grey8A,
                ),
              ),
              minLeadingWidth: 20,
              leading: Icon(
                Icons.bookmark,
                color: ColorConst.white,
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                title: Text(
                  "Channels",
                  style: TextStyleClass.sourceSansProBold(
                    size: 16.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                title: Text(
                  "Languages",
                  style: TextStyleClass.sourceSansProBold(
                    size: 16.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                title: Text(
                  "Genres",
                  style: TextStyleClass.sourceSansProBold(
                    size: 16.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: ColorConst.grey48,
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                title: Text(
                  "Preferences",
                  style: TextStyleClass.sourceSansProBold(
                    size: 16.0,
                  ),
                ),
                onTap: (){
                  Get.to(PreferencesScreen());
                },
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                onTap: (){
                  Get.to(HelpScreen());
                },
                title: Text(
                  "Help",
                  style: TextStyleClass.sourceSansProBold(
                    size: 16.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: ColorConst.grey48,
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                title: Text(
                  "Privacy Policy \u2022 T&C",
                  style: TextStyleClass.sourceSansProRegular(
                    size: 12.0,
                    color: ColorConst.grey83,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                title: Text(
                  "V12.4.7.1168",
                  style: TextStyleClass.sourceSansProRegular(
                    size: 12.0,
                    color: ColorConst.grey83,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
