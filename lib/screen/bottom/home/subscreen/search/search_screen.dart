import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/home/home_utiles.dart';
import 'package:lightstar/screen/bottom/home/subscreen/Genres/genres_screen.dart';
import 'package:lightstar/screen/bottom/home/subscreen/languages/languages_screen.dart';
import 'package:lightstar/screen/bottom/home/subscreen/popularChannels/popular_channel_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Search",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 18.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mic_none,
              color: ColorConst.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                height: 50,
                width: Get.width,
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: ColorConst.white.withOpacity(0.06),
                  border: Border.all(
                    color: ColorConst.white,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Here",
                    hintStyle: TextStyleClass.sourceSansProRegular(),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Browse",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 16.0,
                  color: ColorConst.grey8E,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: (){
                  Get.to(PopularChannelScreen());
                },
                title: Text(
                  "Channels",
                  style: TextStyleClass.sourceSansProSemiBold(
                    size: 16.0,
                  ),
                ),
                subtitle: Text(
                  "StarPlus, Star Jalsha and More",
                  style: TextStyleClass.sourceSansProRegular(
                    size: 12.0,
                    color: ColorConst.grey83,
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: (){
                  Get.to(LanguageScreen());
                },
                title: Text(
                  "Languages",
                  style: TextStyleClass.sourceSansProSemiBold(
                    size: 16.0,
                  ),
                ),
                subtitle: Text(
                  "Hindi, English and More",
                  style: TextStyleClass.sourceSansProRegular(
                    size: 12.0,
                    color: ColorConst.grey83,
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: (){
                  Get.to(GenresScreen());
                },
                title: Text(
                  "Genres",
                  style: TextStyleClass.sourceSansProSemiBold(
                    size: 16.0,
                  ),
                ),
                subtitle: Text(
                  "Romance, Drama and More",
                  style: TextStyleClass.sourceSansProRegular(
                    size: 12.0,
                    color: ColorConst.grey83,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Popular",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 16.0,
                  color: ColorConst.grey8E,
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: (){
                  bottomSheet1();
                },
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(ImageConst.anu),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Anupama",
                      style: TextStyleClass.sourceSansProSemiBold(
                        size: 16.0,
                        color: ColorConst.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: (){
                  bottomSheet1();
                },
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(ImageConst.karan),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Koffee With Karan",
                      style: TextStyleClass.sourceSansProSemiBold(
                        size: 16.0,
                        color: ColorConst.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: (){
                  bottomSheet1();
                },
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(ImageConst.ashiq),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Aashiqana",
                      style: TextStyleClass.sourceSansProSemiBold(
                        size: 16.0,
                        color: ColorConst.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: (){
                  bottomSheet1();
                },
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(ImageConst.modern),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Modern Family",
                      style: TextStyleClass.sourceSansProSemiBold(
                        size: 16.0,
                        color: ColorConst.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: (){
                  bottomSheet1();
                },
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(ImageConst.ghum),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Ghum Hai Kisikey",
                      style: TextStyleClass.sourceSansProSemiBold(
                        size: 16.0,
                        color: ColorConst.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),

            ],
          ),
        ),
      ),
    );
  }
}
