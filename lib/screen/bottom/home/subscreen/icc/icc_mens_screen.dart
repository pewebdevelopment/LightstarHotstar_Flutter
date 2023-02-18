import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/screen/bottom/home/subscreen/search/search_screen.dart';
import 'package:lightstar/utiles/utiles.dart';
import '../../../../../constants/textstyle.dart';

class IccMensScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "ICC Men’s T20 World Cup",
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
        child: commonGrid(list: listIcc),
      ),
    );
  }

  final List listIcc = [
    ImageConst.icc11,
    ImageConst.icc12,
    ImageConst.icc13,
    ImageConst.icc14,
    ImageConst.icc15,
    ImageConst.icc16,
    ImageConst.icc17,
    ImageConst.icc18,
    ImageConst.icc19,
    ImageConst.icc20,
  ];
}
