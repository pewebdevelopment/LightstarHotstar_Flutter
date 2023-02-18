import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/Watchlist/controller/watchlist_controller.dart';

class DeleteWatchListScreen extends StatelessWidget {
  final DeleteWatchListController deleteWatchListController =
      Get.put(DeleteWatchListController());

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
              showAlert(context);
            },
            icon: SvgPicture.asset(ImageConst.deleteIcon),
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: deleteWatchListController.listData.length,
        padding: EdgeInsets.only(bottom: 80, top: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 1.8,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              deleteWatchListController.listData[index]["t3"].value =
                  !deleteWatchListController.listData[index]["t3"].value;
            },
            child: Container(
              height: 92,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(
                    deleteWatchListController.listData[index]["image"],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Obx(
                    () =>
                        deleteWatchListController.listData[index]["t3"].value !=
                                true
                            ? Container(
                                height: 22,
                                width: 22,
                                margin: EdgeInsets.only(top: 10, right: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: ColorConst.white,
                                  ),
                                ),
                              )
                            : Container(
                                height: 22,
                                width: 22,
                                margin: EdgeInsets.only(top: 10, right: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorConst.butColor,
                                ),
                                child: Icon(
                                  Icons.check,
                                  color: ColorConst.white,
                                  size: 10,
                                ),
                              ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actionsPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        content: Container(
          width: Get.width,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: ColorConst.appColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delet",
                  style: TextStyleClass.sourceSansProSemiBold(
                    size: 16.0,
                  ),
                ),
                Text(
                  "Are you sure you want to delet this file?",
                  style: TextStyleClass.sourceSansProRegular(
                    size: 12.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Cancel",
                        style: TextStyleClass.sourceSansProSemiBold(
                          size: 12.0,
                          color: ColorConst.greyB0,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Delete",
                        style: TextStyleClass.sourceSansProSemiBold(
                          size: 12.0,
                          color: ColorConst.butColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
