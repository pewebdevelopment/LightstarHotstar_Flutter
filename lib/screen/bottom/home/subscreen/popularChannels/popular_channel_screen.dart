import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/home/subscreen/TvShow/tv_show_screen.dart';
import 'package:lightstar/screen/bottom/home/subscreen/search/search_screen.dart';
import 'package:lightstar/utiles/utiles.dart';

class PopularChannelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Popular Channels",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: commonGrid(list: listPop,onTap: (){
          Get.to(TvShowScreen());
        }),
      ),
    );
  }

  final List listPop = [
    ImageConst.pop1,
    ImageConst.pop2,
    ImageConst.pop3,
    ImageConst.pop4,
    ImageConst.pop5,
    ImageConst.pop6,
    ImageConst.pop7,
    ImageConst.pop8,
    ImageConst.pop9,
    ImageConst.pop10,
    ImageConst.pop11,
    ImageConst.pop12,
    ImageConst.pop13,
    ImageConst.pop14,
    ImageConst.pop15,
    ImageConst.pop16,
    ImageConst.pop17,
    ImageConst.pop18,
    ImageConst.pop19,
    ImageConst.pop20,
  ];
}
