import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/home/home_utiles.dart';
import 'package:lightstar/screen/bottom/home/subscreen/latest_trending_screen.dart';
import 'package:lightstar/screen/bottom/home/subscreen/search/search_screen.dart';
import 'package:lightstar/utiles/utiles.dart';

class MovieWatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Movie",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 18.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => SearchScreen());
            },
            icon: Icon(
              Icons.search,
              color: ColorConst.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Get.to(() => LatestTrendingScreen());
              },
              child: Container(
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
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                      image: AssetImage(
                        ImageConst.shado,
                      ),
                      width: Get.width,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.play_arrow,
                                color: ColorConst.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Watch Movie",
                                    style: TextStyleClass.sourceSansProSemiBold(
                                      size: 16.0,
                                    ),
                                  ),
                                  Text(
                                    "2 hr 49 min",
                                    style: TextStyleClass.sourceSansProRegular(
                                      size: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.volume_down,
                            color: ColorConst.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                    lang.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          lang[index],
                          style: TextStyleClass.poppinsRegular(
                            size: 10.0,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 58,
                    height: 80,
                    // margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(ImageConst.lt1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Brahmastra Part One: Shiva",
                        style: TextStyleClass.sourceSansProSemiBold(
                          size: 16.0,
                        ),
                      ),
                      Text(
                        "Fantasy \u2022 Adventure",
                        style: TextStyleClass.sourceSansProRegular(
                          size: 12.0,
                          color: ColorConst.grey83,
                        ),
                      ),
                      Text(
                        "2022 \u2022 U/A 13+",
                        style: TextStyleClass.sourceSansProRegular(
                          size: 12.0,
                          color: ColorConst.grey83,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "A journey of fantasy, action and romance comes to life as Shiva enters the Astraverse! He discovers trus love and also, the power of fire within him.",
                textAlign: TextAlign.left,
                style: TextStyleClass.sourceSansProRegular(
                  size: 12.0,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Starring Amitabh Bachahan, Ranbir Kapoor, Alia Bhatt",
                textAlign: TextAlign.left,
                style: TextStyleClass.sourceSansProRegular(
                  size: 12.0,
                  color: ColorConst.grey83,
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
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
                              CupertinoIcons.square_arrow_down,
                              color: ColorConst.white,
                              size: 12,
                            ),
                            SizedBox(width: 6),
                            Text(
                              "Download",
                              style: TextStyleClass.sourceSansProSemiBold(
                                size: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
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
                                CupertinoIcons.add,
                                color: ColorConst.white,
                                size: 12,
                              ),
                              SizedBox(width: 6),
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
                              SizedBox(width: 6),
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
            SizedBox(height: 25),
            commonRow(title: "Popular Shows"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: popularShows),

            ///The world of Brahmastra
            SizedBox(
              height: 25,
            ),
            commonRow(title: "The world of Brahmastra"),
            SizedBox(
              height: 10,
            ),
            commonListView85Image(image: ImageConst.wob),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  final List lang = [
    "हिन्दी",
    "বাংলা",
    "తెలుగు",
    "മലയാളം",
    "தமிழ்",
    "मराठी",
    "हिन्दी",
    "বাংলা",
    "తెలుగు",
    "മലയാളം",
    "தமிழ்",
    "मराठी",
  ];
  final List popularShows = [
    ImageConst.ps1,
    ImageConst.ps2,
    ImageConst.ps3,
    ImageConst.ps1,
    ImageConst.ps2,
    ImageConst.ps3,
  ];
}
