import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/MyAccount/my_account_screen.dart';
import 'package:lightstar/screen/bottom/MyAccount/subScreen/creat_pin_screen.dart';

class AccountSettingScreen extends StatelessWidget {
  const AccountSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(() => MyAccountScreen());
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: ColorConst.white,
          ),
        ),
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Account Settings",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 18.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Get.to(() => CreatePinScreen());
              },
              child: Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  color: ColorConst.grey3A,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create Parental Lock",
                          style: TextStyleClass.sourceSansProSemiBold(),
                        ),
                        Text(
                          "Restrict access to your account with PIN",
                          style: TextStyleClass.sourceSansProSemiBold(
                            size: 12.0,
                            color: ColorConst.greyB0,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: ColorConst.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
