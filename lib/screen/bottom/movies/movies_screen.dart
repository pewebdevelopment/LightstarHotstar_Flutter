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
class MoviesScreen extends StatelessWidget {
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
                      homeController.sliderMovieIndex.value = index + 1;
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
                        "${homeController.sliderMovieIndex.value} / 5",
                        style: TextStyleClass.sourceSansProRegular(
                          size: 8.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            ///Thriller Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Thriller Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: popularShows),

            ///Action Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Action Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: movieForYou),

            ///Romance Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Romance Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: romanceMovies),

            ///Popular Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Popular Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: latestTrending),

            ///Drama Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Drama Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: dramaShows),

            ///Kids Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Kids Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: kids),

            ///Teen Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Teen Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: disneyMovies),

            ///Superhero Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Superhero Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: superHero),

            ///Top Picks For You
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Top Picks For You"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: actionMovie),

            ///Multiplex Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Multiplex Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: movieForYou),

            ///New Short Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "New Short Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: popularShows),

            ///Bollywood Binge
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Bollywood Binge"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: spyMovies),
            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }

  final List spyMovies = [
    ImageConst.spy1,
    ImageConst.spy2,
    ImageConst.spy3,
    ImageConst.spy1,
    ImageConst.spy2,
    ImageConst.spy3,
  ];
  final List actionMovie = [
    ImageConst.am1,
    ImageConst.am2,
    ImageConst.am3,
    ImageConst.am1,
    ImageConst.am2,
    ImageConst.am3,
  ];
  final List superHero = [
    ImageConst.sh1,
    ImageConst.sh2,
    ImageConst.sh3,
    ImageConst.sh1,
    ImageConst.sh2,
    ImageConst.sh3,
  ];

  final List disneyMovies = [
    ImageConst.dm1,
    ImageConst.dm2,
    ImageConst.dm3,
    ImageConst.dm1,
    ImageConst.dm2,
    ImageConst.dm3,
  ];

  final List kids = [
    ImageConst.kid1,
    ImageConst.kid2,
    ImageConst.kid3,
    ImageConst.kid1,
    ImageConst.kid2,
    ImageConst.kid3,
  ];
  final List dramaShows = [
    ImageConst.ds1,
    ImageConst.ds2,
    ImageConst.ds3,
    ImageConst.ds1,
    ImageConst.ds2,
    ImageConst.ds3,
  ];
  final List romanceMovies = [
    ImageConst.rm1,
    ImageConst.rm2,
    ImageConst.rm3,
    ImageConst.rm1,
    ImageConst.rm2,
    ImageConst.rm3,
  ];
  final List movieForYou = [
    ImageConst.mfu1,
    ImageConst.mfu2,
    ImageConst.mfu3,
    ImageConst.mfu1,
    ImageConst.mfu2,
    ImageConst.mfu3,
  ];
  final List latestTrending = [
    ImageConst.lt1,
    ImageConst.lt2,
    ImageConst.lt3,
    ImageConst.lt1,
    ImageConst.lt2,
    ImageConst.lt3,
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
