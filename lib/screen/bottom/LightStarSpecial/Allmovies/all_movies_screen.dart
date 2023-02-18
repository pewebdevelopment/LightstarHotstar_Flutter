import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/home/subscreen/search/search_screen.dart';
import 'package:lightstar/utiles/utiles.dart';

class AllMovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "All Movies",
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              commonGrid3(list: popularMythology),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  final List popularMythology = [
    ImageConst.am1,
    ImageConst.am2,
    ImageConst.am3,
    ImageConst.zombie1,
    ImageConst.zombie2,
    ImageConst.zombie3,
    ImageConst.mfu1,
    ImageConst.mfu2,
    ImageConst.mfu3,
    ImageConst.spy1,
    ImageConst.spy2,
    ImageConst.spy3,
    ImageConst.am1,
    ImageConst.am2,
    ImageConst.am3,
    ImageConst.zombie1,
    ImageConst.zombie2,
  ];
}
