import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/home/controller/home_controller.dart';
import 'package:lightstar/screen/bottom/home/home_utiles.dart';
import 'package:lightstar/screen/bottom/home/subscreen/icc/icc_mens_screen.dart';
import 'package:lightstar/screen/bottom/home/subscreen/popularSports/popular_sport_screen.dart';
import 'package:lightstar/utiles/utiles.dart';

class LiveScreen extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());
  final List imageList = [
    ImageConst.liveB1,
    ImageConst.liveB2,
    ImageConst.liveB3,
    ImageConst.liveB4,
    ImageConst.liveB5,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                CarouselSlider.builder(
                  itemCount: imageList.length,
                  itemBuilder: (context, index, realIndex) => InkWell(
                    onTap: (){
                      bottomSheet1();
                    },
                    child: Container(
                      height: 190,
                      width: Get.width,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imageList[index]),
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                  ),
                  options: CarouselOptions(
                    autoPlay: true,
                    height: 190,
                    viewportFraction: 0.95,
                    onPageChanged: (index, reason) {
                      homeController.sliderLiveIndex.value = index + 1;
                    },
                  ),
                ),
                Obx(
                  () => Padding(
                    padding: const EdgeInsets.only(right: 30, top: 10),
                    child: Container(
                      height: 15,
                      width: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: ColorConst.appColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "${homeController.sliderLiveIndex.value} / 5",
                        style: TextStyleClass.sourceSansProRegular(
                          size: 8.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            ///Popular Sports
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Popular Sports",onTap: (){
              Get.to(PopularSportScreen());
            }),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: recommendedYou),

            ///ICC Men’s T20 World Cup
            SizedBox(
              height: 25,
            ),
            commonRow(title: "ICC Men’s T20 World Cup",onTap: (){
              Get.to(IccMensScreen());
            }),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: iCCMen),

            ///India in Men’s T20 World Cup
            SizedBox(
              height: 25,
            ),
            commonRow(title: "India in Men’s T20 World Cup"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: indiaMen),

            ///Vivo Pro Kabaddi
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Vivo Pro Kabaddi"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: proKabadi),

            ///Premier League
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Premier League"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: premierLeague),

            ///Hero ISL
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Hero ISL"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: heroISL),

            ///Syad Mushtaq Ali Trophy
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Syad Mushtaq Ali Trophy"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: aliTrophy),

            ///HFC: Future is Us-Story of Champions
            SizedBox(
              height: 25,
            ),
            commonRow(title: "HFC: Future is Us-Story of Champions"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: hfc),

            ///Highlights by DSP Mutual Fund
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Highlights by DSP Mutual Fund"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: dsp),

            ///Formula 1
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Formula 1"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: formula),

            ///NFL
            SizedBox(
              height: 25,
            ),
            commonRow(title: "NFL"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: nfl),

            ///Top Replays
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Top Replays"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: topReplay),

            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }

  final List topReplay = [
    ImageConst.tr1,
    ImageConst.tr2,
    ImageConst.tr3,
    ImageConst.tr1,
    ImageConst.tr2,
    ImageConst.tr3,
  ];
  final List nfl = [
    ImageConst.nfl1,
    ImageConst.nfl2,
    ImageConst.nfl3,
    ImageConst.nfl1,
    ImageConst.nfl2,
    ImageConst.nfl3,
  ];
  final List formula = [
    ImageConst.formula1,
    ImageConst.formula2,
    ImageConst.formula3,
    ImageConst.formula1,
    ImageConst.formula2,
    ImageConst.formula3,
  ];
  final List aliTrophy = [
    ImageConst.syad1,
    ImageConst.syad2,
    ImageConst.syad3,
    ImageConst.syad1,
    ImageConst.syad2,
    ImageConst.syad3,
  ];
  final List hfc = [
    ImageConst.hfc1,
    ImageConst.hfc2,
    ImageConst.hfc3,
    ImageConst.hfc1,
    ImageConst.hfc2,
    ImageConst.hfc3,
  ];
  final List dsp = [
    ImageConst.dsp1,
    ImageConst.dsp2,
    ImageConst.dsp3,
    ImageConst.dsp1,
    ImageConst.dsp2,
    ImageConst.dsp3,
  ];
  final List heroISL = [
    ImageConst.isl1,
    ImageConst.isl2,
    ImageConst.isl3,
    ImageConst.isl1,
    ImageConst.isl2,
    ImageConst.isl3,
  ];

  final List premierLeague = [
    ImageConst.pl1,
    ImageConst.pl2,
    ImageConst.pl3,
    ImageConst.pl1,
    ImageConst.pl2,
    ImageConst.pl3,
  ];

  final List recommendedYou = [
    ImageConst.psport1,
    ImageConst.psport2,
    ImageConst.psport3,
    ImageConst.psport1,
    ImageConst.psport2,
    ImageConst.psport3,
  ];
  final List iCCMen = [
    ImageConst.icc1,
    ImageConst.icc2,
    ImageConst.icc3,
    ImageConst.icc1,
    ImageConst.icc2,
    ImageConst.icc3,
  ];
  final List indiaMen = [
    ImageConst.t201,
    ImageConst.t202,
    ImageConst.t203,
    ImageConst.t201,
    ImageConst.t202,
    ImageConst.t203,
  ];
  final List proKabadi = [
    ImageConst.proV1,
    ImageConst.proV2,
    ImageConst.proV3,
    ImageConst.proV1,
    ImageConst.proV2,
    ImageConst.proV3,
  ];
}
