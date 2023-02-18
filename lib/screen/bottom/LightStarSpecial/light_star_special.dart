import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/LightStarSpecial/marvel/marvel_screen.dart';
import 'package:lightstar/screen/bottom/home/controller/home_controller.dart';
import 'package:lightstar/screen/bottom/home/home_utiles.dart';
import 'package:lightstar/utiles/utiles.dart';

class LightStarScreen extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());
  final List imageList = [
    ImageConst.sp11,
    ImageConst.sp12,
    ImageConst.sp13,
    ImageConst.sp14,
    ImageConst.sp15,
  ];

  final imageList2 = [
    ImageConst.disney,
    ImageConst.pixer,
    ImageConst.marvel,
    ImageConst.starShows,
    ImageConst.geographic,
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
                      homeController.sliderSpecialIndex.value = index + 1;
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
                        "${homeController.sliderSpecialIndex.value} / 5",
                        style: TextStyleClass.sourceSansProRegular(
                          size: 8.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 55,
              child: ListView.builder(
                itemCount: imageList2.length,
                padding: EdgeInsets.only(left: 20),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(() => MarvelScreen());
                    },
                    child: Container(
                      width: 55,
                      margin: EdgeInsets.only(right: 15),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Image.asset(imageList2[index]),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorConst.butColor),
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            ColorConst.red.withOpacity(0.0),
                            ColorConst.red.withOpacity(0.3),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            ///Recommended For You
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Recommended For You"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: disneyMovies),

            ///Light Star Originals
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Light Star Originals"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: houseHorror),

            ///Attack of Anime
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Attack of Anime"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: attackAnime),

            ///Teenage Adventures
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Teenage Adventures"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: actionMovie),

            ///Stories from Around the World
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Stories from Around the World"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: dramaShows),

            ///Latest on LightStar
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Latest on LightStar"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: latestTrending),

            ///Thriller
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Thriller"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: thriller),

            ///Superhero
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Superhero"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: superHero),

            ///New & Upcoming
            SizedBox(
              height: 25,
            ),
            commonRow(title: "New & Upcoming"),
            SizedBox(
              height: 15,
            ),
            commonListView85List(list: newUpcoming),

            ///Disney Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Disney Movies"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: disneyMovies),

            ///Kids
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Kids"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: kids),

            ///Power Rangers
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Power Rangers"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: powerRangers),

            ///New Movies for You
            SizedBox(
              height: 25,
            ),
            commonRow(title: "New Movies for You"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: movieForYou),

            ///Action Shows
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Action Shows"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: actionShows),

            ///Romance Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Romance Movies"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: romanceMovies),

            ///Thriller Shows
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Thriller Shows"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: thrillerShows),

            ///Popular in Mythology
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Popular in Mythology"),
            SizedBox(
              height: 15,
            ),
            commonListView(list: popularMythology),

            ///Spy Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Spy Movies"),
            SizedBox(
              height: 15,
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
  final List popularMythology = [
    ImageConst.pim1,
    ImageConst.pim2,
    ImageConst.pim3,
    ImageConst.pim1,
    ImageConst.pim2,
    ImageConst.pim3,
  ];
  final List thrillerShows = [
    ImageConst.ts1,
    ImageConst.ts2,
    ImageConst.ts3,
    ImageConst.ts1,
    ImageConst.ts2,
    ImageConst.ts3,
  ];
  final List romanceMovies = [
    ImageConst.rm1,
    ImageConst.rm2,
    ImageConst.rm3,
    ImageConst.rm1,
    ImageConst.rm2,
    ImageConst.rm3,
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
  final List powerRangers = [
    ImageConst.pr1,
    ImageConst.pr2,
    ImageConst.pr3,
    ImageConst.pr1,
    ImageConst.pr2,
    ImageConst.pr3,
  ];
  final List kids = [
    ImageConst.kid1,
    ImageConst.kid2,
    ImageConst.kid3,
    ImageConst.kid1,
    ImageConst.kid2,
    ImageConst.kid3,
  ];
  final List newUpcoming = [
    ImageConst.nu1,
    ImageConst.nu2,
    ImageConst.nu3,
    ImageConst.nu1,
    ImageConst.nu2,
    ImageConst.nu3,
  ];
  final List superHero = [
    ImageConst.sh1,
    ImageConst.sh2,
    ImageConst.sh3,
    ImageConst.sh1,
    ImageConst.sh2,
    ImageConst.sh3,
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
  final List dramaShows = [
    ImageConst.ds1,
    ImageConst.ds2,
    ImageConst.ds3,
    ImageConst.ds1,
    ImageConst.ds2,
    ImageConst.ds3,
  ];
  final List actionMovie = [
    ImageConst.am1,
    ImageConst.am2,
    ImageConst.am3,
    ImageConst.am1,
    ImageConst.am2,
    ImageConst.am3,
  ];
  final List attackAnime = [
    ImageConst.aa1,
    ImageConst.aa2,
    ImageConst.aa3,
    ImageConst.aa1,
    ImageConst.aa2,
    ImageConst.aa3,
  ];
  final List disneyMovies = [
    ImageConst.dm1,
    ImageConst.dm2,
    ImageConst.dm3,
    ImageConst.dm1,
    ImageConst.dm2,
    ImageConst.dm3,
  ];

  final List houseHorror = [
    ImageConst.hh1,
    ImageConst.hh2,
    ImageConst.hh3,
    ImageConst.hh1,
    ImageConst.hh2,
    ImageConst.hh3,
  ];
}
