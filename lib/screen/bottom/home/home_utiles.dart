import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/home/controller/home_controller.dart';
import 'package:lightstar/screen/bottom/home/subscreen/movie_watch_screen.dart';
import 'package:lightstar/screen/bottom/movies/movies_screen.dart';

bottomSheet1() {
  return Get.bottomSheet(
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 213,
          width: Get.width,
          decoration: BoxDecoration(
            color: ColorConst.white,
            image: DecorationImage(
              image: AssetImage(ImageConst.bb1),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Image(
                image: AssetImage(
                  ImageConst.shado,
                ),
                width: Get.width,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Brahmastra Part One: Shiva",
                        style: TextStyleClass.sourceSansProSemiBold(
                          size: 16.0,
                        ),
                      ),
                      Text(
                        "2 hr 49 min \u2022 2022 \u2022 Fantasy \u2022 U/A 13+",
                        style: TextStyleClass.sourceSansProRegular(
                          size: 12.0,
                          color: ColorConst.greyAE,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 9, bottom: 15, left: 20, right: 20),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Get.to(MoviesScreen());
                  },
                  child: Container(
                    width: Get.width,
                    alignment: Alignment.center,
                    height: 35,
                    decoration: BoxDecoration(
                      color: ColorConst.grey50,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Watch list",
                            style: TextStyleClass.sourceSansProSemiBold(
                              size: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => MovieWatchScreen(),
                    );
                  },
                  child: Container(
                    width: Get.width,
                    alignment: Alignment.center,
                    height: 35,
                    decoration: BoxDecoration(
                      color: ColorConst.butColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Watch",
                      style: TextStyleClass.sourceSansProSemiBold(
                        size: 12.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: InkWell(
                  onTap: () {
                    share();
                  },
                  child: Container(
                    width: Get.width,
                    alignment: Alignment.center,
                    height: 35,
                    decoration: BoxDecoration(
                      color: ColorConst.grey50,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(ImageConst.share),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Share",
                            style: TextStyleClass.sourceSansProSemiBold(
                              size: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "A journey of fantasy, action and romance comes to life as Shiva enters the Astraverse! He discovers trus love and also, the power of fire within him.",
            textAlign: TextAlign.center,
            style: TextStyleClass.sourceSansProRegular(
              size: 10.0,
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    ),
    backgroundColor: ColorConst.appColor,
  );
}

Future<void> share() async {
  await FlutterShare.share(
      title: 'Example share',
      text: 'Example share text',
      linkUrl: 'https://flutter.dev/',
      chooserTitle: 'Example Chooser Title');
}

commonLatestTrendingRow({text, subText, onTap}) {
  return InkWell(
    onTap: onTap,
    child: Row(
      children: [
        Text(
          text,
          style: TextStyleClass.sourceSansProSemiBold(
            size: 16.0,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyleClass.sourceSansProRegular(
              size: 16.0, color: ColorConst.grey8E),
        ),
      ],
    ),
  );
}

movieVideoQualityBottomSheet() {
  HomeController homeController = Get.put(HomeController());

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
              itemCount: homeController.bottomSheetList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Obx(
                  () => InkWell(
                    onTap: () {
                      homeController.bottomSheetList[index]["isSelect"].value =
                          !homeController
                              .bottomSheetList[index]["isSelect"].value;
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          child: homeController
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
                              color: homeController
                                      .bottomSheetList[index]["isSelect"].value
                                  ? ColorConst.butColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(
                                  color: homeController
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
                          homeController.bottomSheetList[index]["text"],
                          style: TextStyleClass.sourceSansProSemiBold(
                              size: 16.0,
                              color: homeController
                                      .bottomSheetList[index]["isSelect"].value
                                  ? ColorConst.butColor
                                  : ColorConst.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          homeController.bottomSheetList[index]["quality"],
                          style: TextStyleClass.sourceSansProRegular(
                              size: 16.0, color: ColorConst.grey8E),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Obx(
              () => Row(
                children: [
                  InkWell(
                    onTap: () {
                      homeController.isSelected.value =
                          !homeController.isSelected.value;
                    },
                    child: Container(
                      height: 15,
                      width: 15,
                      child: homeController.isSelected.isTrue
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
                          color: homeController.isSelected.isTrue
                              ? ColorConst.butColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(2),
                          border: Border.all(
                              color: homeController.isSelected.isTrue
                                  ? ColorConst.butColor
                                  : ColorConst.white,
                              width: 1.25)),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Remember my Settings",
                    style: TextStyleClass.sourceSansProSemiBold(
                        size: 16.0, color: ColorConst.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

audioLanguageBottomSheet() {
  HomeController homeController = Get.put(HomeController());

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
              "Audio Language",
              style: TextStyleClass.sourceSansProSemiBold(
                  size: 16.0, color: ColorConst.white),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: homeController.audioLanguageList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Obx(
                  () => InkWell(
                    onTap: () {
                      homeController
                              .audioLanguageList[index]["isSelect"].value =
                          !homeController
                              .audioLanguageList[index]["isSelect"].value;
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          child: homeController
                                  .audioLanguageList[index]["isSelect"].value
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
                              color: homeController
                                      .audioLanguageList[index]["isSelect"]
                                      .value
                                  ? ColorConst.butColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(
                                  color: homeController
                                          .audioLanguageList[index]["isSelect"]
                                          .value
                                      ? ColorConst.butColor
                                      : ColorConst.white,
                                  width: 1.25)),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          homeController.audioLanguageList[index]["text"],
                          style: TextStyleClass.sourceSansProSemiBold(
                              size: 16.0,
                              color: homeController
                                      .audioLanguageList[index]["isSelect"]
                                      .value
                                  ? ColorConst.butColor
                                  : ColorConst.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          homeController.audioLanguageList[index]["quality"],
                          style: TextStyleClass.sourceSansProRegular(
                              size: 16.0, color: ColorConst.grey8E),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

subtitleBottomSheet() {
  HomeController homeController = Get.put(HomeController());

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
              "Subtitles",
              style: TextStyleClass.sourceSansProSemiBold(
                  size: 16.0, color: ColorConst.white),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: homeController.audioLanguageList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Obx(
                  () => InkWell(
                    onTap: () {
                      homeController.subtitlesList[index]["isSelect"].value =
                          !homeController
                              .subtitlesList[index]["isSelect"].value;
                    },
                    child: Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          child: homeController
                                  .subtitlesList[index]["isSelect"].value
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
                              color: homeController
                                      .subtitlesList[index]["isSelect"].value
                                  ? ColorConst.butColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(
                                  color: homeController
                                          .subtitlesList[index]["isSelect"]
                                          .value
                                      ? ColorConst.butColor
                                      : ColorConst.white,
                                  width: 1.25)),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          homeController.subtitlesList[index]["text"],
                          style: TextStyleClass.sourceSansProSemiBold(
                              size: 16.0,
                              color: homeController
                                      .subtitlesList[index]["isSelect"].value
                                  ? ColorConst.butColor
                                  : ColorConst.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          homeController.subtitlesList[index]["quality"],
                          style: TextStyleClass.sourceSansProRegular(
                              size: 16.0, color: ColorConst.grey8E),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

reportAndIssueBottomSheet() {
  HomeController homeController = Get.put(HomeController());
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
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Report an Issue",
                style: TextStyleClass.sourceSansProSemiBold(
                    size: 18.0, color: ColorConst.grey8E),
              ),
              SizedBox(
                height: 15,
              ),
              ListView.builder(
                itemCount:homeController.reportList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: InkWell(
                    onTap: (){
                      Get.back();
                      Get.defaultDialog(
                        title: "",
                        titlePadding: EdgeInsets.zero,
                        contentPadding: EdgeInsets.zero,
                        backgroundColor: ColorConst.appColor,
                        content: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Your issue has been reported",
                                style: TextStyleClass.sourceSansProSemiBold(
                                    size: 16.0, color: ColorConst.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Thank you for taking the time to report your\nissue.",
                                style: TextStyleClass.sourceSansProRegular(
                                    size: 12.0, color: ColorConst.white),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: InkWell(
                                  onTap: (){
                                    Get.back();
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyleClass.poppinsSemiBold(
                                        size: 12.0, color: ColorConst.butColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          homeController.reportList[index]["text"],
                          style: TextStyleClass.sourceSansProRegular(
                              size: 16.0, color: ColorConst.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          homeController.reportList[index]["subText"],
                          style: TextStyleClass.sourceSansProRegular(
                              size: 12.0, color: ColorConst.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    ),
  );
}
