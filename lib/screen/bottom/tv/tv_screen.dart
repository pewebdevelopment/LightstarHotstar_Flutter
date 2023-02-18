import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/home/controller/home_controller.dart';
import 'package:lightstar/screen/bottom/home/home_utiles.dart';
import 'package:lightstar/utiles/utiles.dart';

// ignore: must_be_immutable
class TvScreen extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  List imageList = [
    ImageConst.banner1,
    ImageConst.banner2,
    ImageConst.banner3,
    ImageConst.banner1,
    ImageConst.banner2,
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
                      homeController.sliderTvIndex.value = index + 1;
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
                        "${homeController.sliderTvIndex.value} / 5",
                        style: TextStyleClass.sourceSansProRegular(
                          size: 8.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            ///HBO Originals
            SizedBox(
              height: 25,
            ),
            commonRow(title: "HBO Originals"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: hBO),

            ///Thriller Shows
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Thriller Shows"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: thriller),

            ///Superhero
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Superhero Shows"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: superHero),

            ///Popular Shows
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Popular Shows"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: latestTrending),

            ///Popular Channels
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Popular Channels"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: popularChannels),

            ///Drama Shows
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Drama Shows"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: dramaShows),

            ///House of Horror
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Nat Geo Shows"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: houseHorror),

            ///Top Picks For You
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Top Picks For You"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: actionMovie),

            ///Best of Kids
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Best of Kids"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: kids),

            ///Best of HBO
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Best of HBO"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: movieForYou),

            ///Star Shows
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Star Shows"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: actionShows),

            ///Quix Shows
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Quix Shows"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: popularShows),

            ///Best of Kids
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Best of Kids"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: kids),

            SizedBox(height: 150),
          ],
        ),
      ),
    );
  }

  final List popularShows = [
    ImageConst.ps1,
    ImageConst.ps2,
    ImageConst.ps3,
    ImageConst.ps1,
    ImageConst.ps2,
    ImageConst.ps3,
  ];
  final List actionShows = [
    ImageConst.as1,
    ImageConst.as2,
    ImageConst.as3,
    ImageConst.as1,
    ImageConst.as2,
    ImageConst.as3,
  ];
  final List movieForYou = [
    ImageConst.mfu1,
    ImageConst.mfu2,
    ImageConst.mfu3,
    ImageConst.mfu1,
    ImageConst.mfu2,
    ImageConst.mfu3,
  ];
  final List kids = [
    ImageConst.kid1,
    ImageConst.kid2,
    ImageConst.kid3,
    ImageConst.kid1,
    ImageConst.kid2,
    ImageConst.kid3,
  ];
  final List actionMovie = [
    ImageConst.am1,
    ImageConst.am2,
    ImageConst.am3,
    ImageConst.am1,
    ImageConst.am2,
    ImageConst.am3,
  ];
  final List houseHorror = [
    ImageConst.hh1,
    ImageConst.hh2,
    ImageConst.hh3,
    ImageConst.hh1,
    ImageConst.hh2,
    ImageConst.hh3,
  ];
  final List dramaShows = [
    ImageConst.ds1,
    ImageConst.ds2,
    ImageConst.ds3,
    ImageConst.ds1,
    ImageConst.ds2,
    ImageConst.ds3,
  ];
  final List superHero = [
    ImageConst.sh1,
    ImageConst.sh2,
    ImageConst.sh3,
    ImageConst.sh1,
    ImageConst.sh2,
    ImageConst.sh3,
  ];
  final List popularChannels = [
    ImageConst.pc1,
    ImageConst.pc2,
    ImageConst.pc3,
    ImageConst.pc1,
    ImageConst.pc2,
    ImageConst.pc3,
  ];
  final List hBO = [
    ImageConst.ds1,
    ImageConst.ds2,
    ImageConst.ds3,
    ImageConst.ds1,
    ImageConst.ds2,
    ImageConst.ds3,
  ];
  final List thriller = [
    ImageConst.th1,
    ImageConst.th2,
    ImageConst.th3,
    ImageConst.th1,
    ImageConst.th2,
    ImageConst.th3,
  ];
  final List latestTrending = [
    ImageConst.lt1,
    ImageConst.lt2,
    ImageConst.lt3,
    ImageConst.lt1,
    ImageConst.lt2,
    ImageConst.lt3,
  ];
}
