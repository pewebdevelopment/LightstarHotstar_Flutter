import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/textstyle.dart';

class ManageDeviceScreen extends StatelessWidget {
  const ManageDeviceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Manage Devices",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 18.0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Container(
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: ColorConst.grey3A,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Xiaomi Phone (This Device)",
                  style: TextStyleClass.sourceSansProSemiBold(),
                ),
                Text(
                  "09/Nov/2022",
                  style: TextStyleClass.sourceSansProSemiBold(
                    size: 12.0,
                    color: ColorConst.greyB0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
