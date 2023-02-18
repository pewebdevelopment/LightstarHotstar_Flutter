import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/Watchlist/delete_watchlist_screen.dart';
import 'package:lightstar/utiles/utiles.dart';

class WatchlistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Watchlist",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 18.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => DeleteWatchListScreen());
            },
            icon: Icon(
              Icons.edit_outlined,
              color: ColorConst.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: commonGrid(list: listData),
      ),
    );
  }

  final List listData = [
    ImageConst.w1,
    ImageConst.w2,
    ImageConst.w3,
    ImageConst.w4,
    ImageConst.d1,
    ImageConst.d2,
  ];
}
