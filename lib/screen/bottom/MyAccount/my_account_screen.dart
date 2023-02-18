import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/MyAccount/subScreen/account_setting_screen.dart';
import 'package:lightstar/screen/bottom/MyAccount/subScreen/manage_device_screen.dart';
import 'package:lightstar/screen/bottom/MyAccount/subScreen/subscription_screen.dart';
import 'package:lightstar/utiles/utiles.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "My Account",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 18.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Image(
                  image: AssetImage(
                    ImageConst.profilePic,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "Devon Lane",
                    style: TextStyleClass.sourceSansProBold(
                      size: 16.0,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "+91 12345 67890",
                  style: TextStyleClass.sourceSansProRegular(
                    size: 12.0,
                    color: ColorConst.grey8A,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Membership",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 16.0,
                  color: ColorConst.grey8E,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "LightStar Mobile",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 16.0,
                ),
              ),
              Text(
                "Subscription Valid Till : 20 Feb 2023",
                style: TextStyleClass.sourceSansProRegular(
                  size: 12.0,
                  color: ColorConst.grey83,
                ),
              ),
              SizedBox(height: 20),
              CommonButton(
                title: 'UPGRADE PLAN',
                onPress: () {
                  Get.to(() => SubscriptionScreen());
                },
              ),
              SizedBox(height: 25),
              Text(
                "Account And Security",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 16.0,
                  color: ColorConst.grey8E,
                ),
              ),
              SizedBox(height: 20),
              commonButMyAc(
                title: "Account Settings",
                onTap: () {
                  Get.to(() => AccountSettingScreen());
                },
              ),
              SizedBox(height: 12),
              commonButMyAc(
                title: "Manage Devices",
                onTap: () {
                  Get.to(() => ManageDeviceScreen());
                },
              ),
              SizedBox(height: 12),
              commonButMyAc(
                title: "Log Out",
                onTap: () {
                  showAlert(context);
                },
              ),
              SizedBox(height: 12),
              commonButMyAc(
                title: "Log Out All Devices",
                onTap: () {},
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Need Help? Click Here",
                  style: TextStyleClass.sourceSansProSemiBold(
                    size: 12.0,
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actionsPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        content: Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: ColorConst.appColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Log Out",
                  style: TextStyleClass.sourceSansProSemiBold(
                    size: 16.0,
                  ),
                ),
                Text(
                  "Are you sure you want to log out?",
                  style: TextStyleClass.sourceSansProRegular(
                    size: 12.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Cancel",
                        style: TextStyleClass.sourceSansProSemiBold(
                          size: 12.0,
                          color: ColorConst.greyB0,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Log Out",
                        style: TextStyleClass.sourceSansProSemiBold(
                          size: 12.0,
                          color: ColorConst.butColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
