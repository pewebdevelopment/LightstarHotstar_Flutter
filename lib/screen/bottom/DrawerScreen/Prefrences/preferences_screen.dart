import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/Prefrences/controller/preference_controller.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/Prefrences/privacy_policy_screen.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/Prefrences/term_condition_screen.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PreferencesScreen extends StatelessWidget {
  PreferencesScreen({Key? key}) : super(key: key);

  final PreferenceController preferenceController =
      Get.put(PreferenceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.black27,
      appBar: AppBar(
        backgroundColor: ColorConst.black27,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 18.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Video",
                style: TextStyleClass.sourceSansProSemiBold(
                    size: 16.0, color: ColorConst.grey8E),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 66,
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Autoplay Trailers",
                      style: TextStyleClass.sourceSansProSemiBold(
                          size: 16.0, color: ColorConst.white),
                    ),
                    Obx(
                      () => Transform.scale(
                        scale: 0.8,
                        child: CupertinoSwitch(
                          // This bool value toggles the switch.
                          value: preferenceController.autoPlayTrailers.value,
                          // thumbColor: CupertinoColors.systemBlue,
                          trackColor: ColorConst.greyB0,
                          activeColor: ColorConst.butColor,
                          onChanged: (bool? value) {
                            preferenceController.autoPlayTrailers.value =
                                value!;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: ColorConst.grey3A,
                  borderRadius: BorderRadius.circular(6)),
            ),
            SizedBox(
              height: 31,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: InkWell(
                onTap: () {
                  bottomSheet();
                },
                child: Row(
                  children: [
                    Text(
                      "Preferred Video Quality",
                      style: TextStyleClass.sourceSansProSemiBold(
                          size: 16.0, color: ColorConst.white),
                    ),
                    Spacer(),
                    Text(
                      "Auto",
                      style: TextStyleClass.sourceSansProSemiBold(
                          size: 16.0, color: ColorConst.greyB0),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: ColorConst.greyB0,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 48,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Download",
                style: TextStyleClass.sourceSansProSemiBold(
                    size: 16.0, color: ColorConst.grey8E),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 66,
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10),
                child: InkWell(
                  onTap: (){
                    bottomSheet2();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Default Download Quality",
                        style: TextStyleClass.sourceSansProSemiBold(
                            size: 16.0, color: ColorConst.white),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: ColorConst.greyB0,
                      )
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: ColorConst.grey3A,
                  borderRadius: BorderRadius.circular(6)),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 110,
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Internal Storage",
                      style: TextStyleClass.sourceSansProSemiBold(
                          size: 16.0, color: ColorConst.white),
                    ),
                    Expanded(
                      child: LinearPercentIndicator(
                        lineHeight: 6.0,
                        percent: 0.4,
                        padding: EdgeInsets.zero,
                        backgroundColor: ColorConst.grey67,
                        progressColor: ColorConst.butColor,
                        barRadius: Radius.circular(10),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: ColorConst.butColor),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Used 20.17 GB",
                          style: TextStyleClass.sourceSansProSemiBold(
                              size: 12.0, color: ColorConst.greyB0),
                        ),
                        Spacer(),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: ColorConst.grey67),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Available 43.83 GB",
                          style: TextStyleClass.sourceSansProSemiBold(
                              size: 12.0, color: ColorConst.greyB0),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: ColorConst.grey3A,
                  borderRadius: BorderRadius.circular(6)),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: RichText(
                  text: TextSpan(
                      text: "Privacy Policy",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                             Get.to(PrivacyPolicyScreen());
                        },
                      style: TextStyleClass.sourceSansProSemiBold(
                          size: 12.0, color: ColorConst.greyB0),
                      children: [
                    TextSpan(
                      text: "    \u2022 Terms & Conditions",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(TermsConditionScreen());
                        },
                      style: TextStyleClass.sourceSansProSemiBold(
                          size: 12.0, color: ColorConst.greyB0),
                    )
                  ])),
            )
          ],
        ),
      ),
    );
  }

  bottomSheet() {
    return Get.bottomSheet(
      Container(
        padding: EdgeInsets.only(
          top: 10,
        ),
        decoration: BoxDecoration(
          color: ColorConst.appColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Select Video Quality",
                style: TextStyleClass.sourceSansProSemiBold(
                    size: 16.0, color: ColorConst.white),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                itemCount: preferenceController.bottomSheetList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Obx(
                    () => InkWell(
                      onTap: () {
                        preferenceController
                                .bottomSheetList[index]["isSelect"].value =
                            !preferenceController
                                .bottomSheetList[index]["isSelect"].value;
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            child: preferenceController
                                    .bottomSheetList[index]["isSelect"].value
                                ? Align(
                              alignment: Alignment.center,
                                  child: Icon(
                                      Icons.check,
                                      color: ColorConst.white,
                                      size: 12,
                                    ),
                                )
                                : Container(),
                            decoration: BoxDecoration(
                                color: preferenceController
                                        .bottomSheetList[index]["isSelect"]
                                        .value
                                    ? ColorConst.butColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                    color: preferenceController
                                            .bottomSheetList[index]["isSelect"]
                                            .value
                                        ? ColorConst.butColor
                                        : ColorConst.white,
                                    width: 1.25)),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            preferenceController.bottomSheetList[index]["text"],
                            style: TextStyleClass.sourceSansProSemiBold(
                                size: 16.0, color: preferenceController
                                .bottomSheetList[index]["isSelect"]
                                .value
                                ? ColorConst.butColor
                                :ColorConst.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            preferenceController.bottomSheetList[index]
                                ["quality"],
                            style: TextStyleClass.sourceSansProRegular(
                                size: 16.0, color: ColorConst.grey8E),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          index == 1
                              ? Text(
                                  "UPGRADE",
                                  style: TextStyleClass.sourceSansProBold(
                                      size: 12.0, color: ColorConst.yellowFFCE),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bottomSheet2() {
    return Get.bottomSheet(
      Container(
        padding: EdgeInsets.only(
          top: 10,
        ),
        decoration: BoxDecoration(
          color: ColorConst.appColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Select Video Quality",
                style: TextStyleClass.sourceSansProSemiBold(
                    size: 16.0, color: ColorConst.white),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                itemCount: preferenceController.bottomSheetList2.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Obx(
                        () => InkWell(
                      onTap: () {
                        preferenceController
                            .bottomSheetList2[index]["isSelect"].value =
                        !preferenceController
                            .bottomSheetList2[index]["isSelect"].value;
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            child: preferenceController
                                .bottomSheetList2[index]["isSelect"].value
                                ? Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.check,
                                color: ColorConst.white,
                                size: 12,
                              ),
                            )
                                : Container(),
                            decoration: BoxDecoration(
                                color: preferenceController
                                    .bottomSheetList2[index]["isSelect"]
                                    .value
                                    ? ColorConst.butColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                    color: preferenceController
                                        .bottomSheetList2[index]["isSelect"]
                                        .value
                                        ? ColorConst.butColor
                                        : ColorConst.white,
                                    width: 1.25)),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            preferenceController.bottomSheetList2[index]["text"],
                            style: TextStyleClass.sourceSansProSemiBold(
                                size: 16.0, color: preferenceController
                                .bottomSheetList2[index]["isSelect"]
                                .value
                                ? ColorConst.butColor
                                :ColorConst.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            preferenceController.bottomSheetList2[index]
                            ["quality"],
                            style: TextStyleClass.sourceSansProRegular(
                                size: 16.0, color: ColorConst.grey8E),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          index == 1
                              ? Text(
                            "UPGRADE",
                            style: TextStyleClass.sourceSansProBold(
                                size: 12.0, color: ColorConst.yellowFFCE),
                          )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
