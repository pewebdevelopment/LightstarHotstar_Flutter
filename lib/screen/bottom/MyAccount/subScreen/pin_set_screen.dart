import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/MyAccount/subScreen/controller/pin_set_controller.dart';
import 'package:lightstar/screen/bottom/MyAccount/subScreen/verify_account_screen.dart';
import 'package:lightstar/utiles/utiles.dart';

class PinSetScreen extends StatelessWidget {
  final PinSetController pinSetController = Get.put(PinSetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "PIN Set Successfully",
              style: TextStyleClass.sourceSansProSemiBold(
                size: 18.0,
              ),
            ),
            Text(
              "Use this PIN to access parent profile",
              style: TextStyleClass.sourceSansProSemiBold(
                size: 16.0,
                color: ColorConst.greyB0,
              ),
            ),
            SizedBox(height: 30),
            CommonButton(
              title: 'Start Watching',
              onPress: () {
                // Get.to(() => PinSetScreen());
              },
            ),
            SizedBox(height: 20),
            Container(
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
                        "Parental Lock",
                        style: TextStyleClass.sourceSansProSemiBold(),
                      ),
                      Text(
                        "Status: Enabled",
                        style: TextStyleClass.sourceSansProSemiBold(
                          size: 12.0,
                          color: ColorConst.greyB0,
                        ),
                      ),
                    ],
                  ),
                  Obx(
                    () => Transform.scale(
                      scale: 0.8,
                      child: CupertinoSwitch(
                        // This bool value toggles the switch.
                        value: pinSetController.wifi.value,
                        // thumbColor: CupertinoColors.systemBlue,
                        trackColor: ColorConst.greyB0,
                        activeColor: ColorConst.butColor,
                        onChanged: (bool? value) {
                          pinSetController.wifi.value = value!;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                Get.to(() => VerifyAccountScreen());
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
                          "Change PIN",
                          style: TextStyleClass.sourceSansProSemiBold(),
                        ),
                        Text(
                          "Authorize and update with new PIN",
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
