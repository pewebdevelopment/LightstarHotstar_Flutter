import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/screen/bottom/home/subscreen/search/search_screen.dart';
import 'package:lightstar/utiles/utiles.dart';
import '../../../../../constants/textstyle.dart';

class LanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Languages",
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
        child: commonGrid(list: listLan),
      ),
    );
  }

  final List listLan = [
    ImageConst.lan1,
    ImageConst.lan2,
    ImageConst.lan3,
    ImageConst.lan4,
    ImageConst.lan5,
    ImageConst.lan6,
    ImageConst.lan7,
    ImageConst.lan11,
    ImageConst.lan8,
    ImageConst.lan9,
    ImageConst.lan10,
  ];
}
