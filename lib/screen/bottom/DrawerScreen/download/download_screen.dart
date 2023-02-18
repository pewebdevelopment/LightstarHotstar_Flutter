import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/download/delete_download_screen.dart';

class DownloadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Downloads",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 18.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit_outlined,
              color: ColorConst.white,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listData.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetImage(
                        listData[index]["image"],
                      ),
                      height: 85,
                      width: 150,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listData[index]["t1"],
                          style: TextStyleClass.sourceSansProBold(),
                        ),
                        Text(
                          listData[index]["t2"],
                          style: TextStyleClass.sourceSansProSemiBold(
                            size: 12.0,
                            color: ColorConst.greyB0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    bottomSheet2();
                  },
                  icon: Icon(
                    Icons.more_vert,
                    color: ColorConst.white,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  final List<Map> listData = [
    {
      "image": ImageConst.d1,
      "t1": "The Legend of\nHanuman",
      "t2": "24 min \u2022 151 MB",
    },
    {
      "image": ImageConst.d2,
      "t1": "The Legend of\nHanuman",
      "t2": "37 min \u2022 162 MB",
    },
    {
      "image": ImageConst.d3,
      "t1": "The Legend of\nHanuman",
      "t2": "40 min \u2022 167 MB",
    },
    {
      "image": ImageConst.d4,
      "t1": "The Legend of\nHanuman",
      "t2": "30 min \u2022 155 MB",
    },
    {
      "image": ImageConst.d4,
      "t1": "The Legend of\nHanuman",
      "t2": "49 min \u2022 182 MB",
    },
  ];

  bottomSheet2() {
    return Get.bottomSheet(
      Container(
        padding: EdgeInsets.only(
          top: 10,
        ),
        decoration: BoxDecoration(
          color: ColorConst.appColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                "The Legend of Hanuman S1 E1",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 16.0,
                  color: ColorConst.greyB0,
                ),
              ),
              trailing: Text(
                "151 MB ",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 16.0,
                  color: ColorConst.greyB0,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "See All Episodes",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 16.0,
                ),
              ),
              minLeadingWidth: 20,
              leading: Icon(
                Icons.grid_view_rounded,
                color: ColorConst.white,
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(() => DeleteDownloadScreen());
              },
              title: Text(
                "Delete from Downloads",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 16.0,
                ),
              ),
              minLeadingWidth: 20,
              leading: Icon(
                Icons.delete_rounded,
                color: ColorConst.white,
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
