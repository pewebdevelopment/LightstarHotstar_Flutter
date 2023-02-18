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
class HomeScreen extends StatelessWidget {
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
                      homeController.sliderIndex.value = index + 1;
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
                        "${homeController.sliderIndex.value} / 5",
                        style: TextStyleClass.sourceSansProRegular(
                          size: 8.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            ///Continue Watching
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 25, bottom: 15),
              child: Text(
                "Continue Watching",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 16.0,
                ),
              ),
            ),

            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: continueWatching.length,
                padding: EdgeInsets.only(left: 20),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap:(){
                            bottomSheet1();
                          },
                          child: ClipRRect(
                            child: Container(
                              height: 85,
                              width: 150,
                              // margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(continueWatching[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Image(
                                    image: AssetImage(ImageConst.cwcan),
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.more_vert,
                                      color: ColorConst.white,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Icon(
                                      Icons.play_arrow,
                                      color: ColorConst.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Container(
                          height: 8,
                          width: 150,
                          decoration: BoxDecoration(
                            color: ColorConst.grey5A,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: 8,
                            margin:
                                EdgeInsets.only(right: index == 0 ? 50 : 20),
                            decoration: BoxDecoration(
                              color: ColorConst.butColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            ///Watch list
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Watch list"),
            SizedBox(
              height: 10,
            ),
            commonListView85Image(image: ImageConst.wl1),

            ///Latest & Trending
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Latest & Trending"),
            SizedBox(
              height: 10,
            ),
            commonListView(
                list: latestTrending,
                onTap: () {
                  bottomSheet1();
                }),

            ///Best in Sport’s
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Best in Sport’s"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: bestSport),

            ///House of Horror
            SizedBox(
              height: 25,
            ),
            commonRow(title: "House of Horror"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: houseHorror),

            ///The world of Brahmastra
            SizedBox(
              height: 25,
            ),
            commonRow(title: "The world of Brahmastra"),
            SizedBox(
              height: 10,
            ),
            commonListView85Image(image: ImageConst.wob),

            ///Action Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Action Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: actionMovie),

            ///Drama Shows
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Drama Shows"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: dramaShows),

            ///StarPlus Shows
            SizedBox(
              height: 25,
            ),
            commonRow(title: "StarPlus Shows"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: starPlusShows),

            ///Thriller
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Thriller"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: thriller),

            ///Superhero
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Superhero"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: superHero),

            ///New & Upcoming
            SizedBox(
              height: 25,
            ),
            commonRow(title: "New & Upcoming"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: newUpcoming),

            ///Disney Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Disney Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: disneyMovies),

            ///Kids
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Kids"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: kids),

            ///Power Rangers
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Power Rangers"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: powerRangers),

            ///Popular Shows
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Popular Shows"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: popularShows),

            ///Attack of Anime
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Attack of Anime"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: attackAnime),

            ///Latest Trailer’s
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Latest Trailer’s"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: latestTrending2),

            ///New Movies for You
            SizedBox(
              height: 25,
            ),
            commonRow(title: "New Movies for You"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: movieForYou),

            ///Action Shows
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Action Shows"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: actionShows),

            ///Romance Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Romance Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: romanceMovies),

            ///Thriller Shows
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Thriller Shows"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: thrillerShows),

            ///Popular in Mythology
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Popular in Mythology"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: popularMythology),

            ///Spy Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Spy Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: spyMovies),

            ///Zombie Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Zombie Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: zombieMovies),

            ///Popular Genres
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Popular Genres"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: popularGenres),

            ///Popular Languages
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Popular Languages"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: popularLanguages),

            ///Popular Channels
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Popular Channels"),
            SizedBox(
              height: 10,
            ),
            commonListView85List(list: popularChannels),
            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }

  final List popularGenres = [
    ImageConst.pg1,
    ImageConst.pg2,
    ImageConst.pg3,
    ImageConst.pg1,
    ImageConst.pg2,
    ImageConst.pg3,
  ];
  final List popularChannels = [
    ImageConst.pc1,
    ImageConst.pc2,
    ImageConst.pc3,
    ImageConst.pc1,
    ImageConst.pc2,
    ImageConst.pc3,
  ];

  final List popularLanguages = [
    ImageConst.pl1,
    ImageConst.pl2,
    ImageConst.pl3,
    ImageConst.pl1,
    ImageConst.pl2,
    ImageConst.pl3,
  ];

  final List popularMythology = [
    ImageConst.pim1,
    ImageConst.pim2,
    ImageConst.pim3,
    ImageConst.pim1,
    ImageConst.pim2,
    ImageConst.pim3,
  ];
  final List spyMovies = [
    ImageConst.spy1,
    ImageConst.spy2,
    ImageConst.spy3,
    ImageConst.spy1,
    ImageConst.spy2,
    ImageConst.spy3,
  ];

  final List zombieMovies = [
    ImageConst.zombie1,
    ImageConst.zombie2,
    ImageConst.zombie3,
    ImageConst.zombie1,
    ImageConst.zombie2,
    ImageConst.zombie3,
  ];
  final List thrillerShows = [
    ImageConst.ts1,
    ImageConst.ts2,
    ImageConst.ts3,
    ImageConst.ts1,
    ImageConst.ts2,
    ImageConst.ts3,
  ];
  final List actionShows = [
    ImageConst.as1,
    ImageConst.as2,
    ImageConst.as3,
    ImageConst.as1,
    ImageConst.as2,
    ImageConst.as3,
  ];
  final List romanceMovies = [
    ImageConst.rm1,
    ImageConst.rm2,
    ImageConst.rm3,
    ImageConst.rm1,
    ImageConst.rm2,
    ImageConst.rm3,
  ];
  final List attackAnime = [
    ImageConst.aa1,
    ImageConst.aa2,
    ImageConst.aa3,
    ImageConst.aa1,
    ImageConst.aa2,
    ImageConst.aa3,
  ];
  final List latestTrending2 = [
    ImageConst.lt21,
    ImageConst.lt22,
    ImageConst.lt23,
    ImageConst.lt21,
    ImageConst.lt22,
    ImageConst.lt23,
  ];
  final List movieForYou = [
    ImageConst.mfu1,
    ImageConst.mfu2,
    ImageConst.mfu3,
    ImageConst.mfu1,
    ImageConst.mfu2,
    ImageConst.mfu3,
  ];
  final List continueWatching = [
    ImageConst.cw1,
    ImageConst.cw2,
  ];
  final List latestTrending = [
    ImageConst.lt1,
    ImageConst.lt2,
    ImageConst.lt3,
    ImageConst.lt1,
    ImageConst.lt2,
    ImageConst.lt3,
  ];
  final List bestSport = [
    ImageConst.bs1,
    ImageConst.bs2,
    ImageConst.bs3,
    ImageConst.bs1,
    ImageConst.bs2,
    ImageConst.bs3,
  ];
  final List houseHorror = [
    ImageConst.hh1,
    ImageConst.hh2,
    ImageConst.hh3,
    ImageConst.hh1,
    ImageConst.hh2,
    ImageConst.hh3,
  ];
  final List actionMovie = [
    ImageConst.am1,
    ImageConst.am2,
    ImageConst.am3,
    ImageConst.am1,
    ImageConst.am2,
    ImageConst.am3,
  ];
  final List dramaShows = [
    ImageConst.ds1,
    ImageConst.ds2,
    ImageConst.ds3,
    ImageConst.ds1,
    ImageConst.ds2,
    ImageConst.ds3,
  ];
  final List starPlusShows = [
    ImageConst.sp1,
    ImageConst.sp2,
    ImageConst.sp3,
    ImageConst.sp1,
    ImageConst.sp2,
    ImageConst.sp3,
  ];
  final List kids = [
    ImageConst.kid1,
    ImageConst.kid2,
    ImageConst.kid3,
    ImageConst.kid1,
    ImageConst.kid2,
    ImageConst.kid3,
  ];
  final List thriller = [
    ImageConst.th1,
    ImageConst.th2,
    ImageConst.th3,
    ImageConst.th1,
    ImageConst.th2,
    ImageConst.th3,
  ];
  final List superHero = [
    ImageConst.sh1,
    ImageConst.sh2,
    ImageConst.sh3,
    ImageConst.sh1,
    ImageConst.sh2,
    ImageConst.sh3,
  ];

  final List newUpcoming = [
    ImageConst.nu1,
    ImageConst.nu2,
    ImageConst.nu3,
    ImageConst.nu1,
    ImageConst.nu2,
    ImageConst.nu3,
  ];
  final List disneyMovies = [
    ImageConst.dm1,
    ImageConst.dm2,
    ImageConst.dm3,
    ImageConst.dm1,
    ImageConst.dm2,
    ImageConst.dm3,
  ];

  final List powerRangers = [
    ImageConst.pr1,
    ImageConst.pr2,
    ImageConst.pr3,
    ImageConst.pr1,
    ImageConst.pr2,
    ImageConst.pr3,
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
