import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/download/controller/delete_dowload_controller.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/download/download_screen.dart';

class DeleteDownloadScreen extends StatelessWidget {
  final DeleteDownloadController deleteDownloadController =
      Get.put(DeleteDownloadController());

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
            onPressed: () {
              showAlert(context);
            },
            icon: SvgPicture.asset(ImageConst.deleteIcon),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: deleteDownloadController.listData.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              deleteDownloadController.listData[index]["t3"].value =
                  !deleteDownloadController.listData[index]["t3"].value;
            },
            child: Obx(
              () => Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        deleteDownloadController.listData[index]["t3"].value !=
                                true
                            ? Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: ColorConst.butColor,
                                  ),
                                ),
                              )
                            : Container(
                                height: 22,
                                width: 22,
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
                        SizedBox(width: 15),
                        Image(
                          image: AssetImage(
                            deleteDownloadController.listData[index]["image"],
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
                              deleteDownloadController.listData[index]["t1"],
                              style: TextStyleClass.sourceSansProBold(),
                            ),
                            Text(
                              deleteDownloadController.listData[index]["t2"],
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
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: ColorConst.white,
                      ),
                    ),
                  ],
                ),
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
                      onPressed: () {
                        Get.off(DownloadScreen());
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyleClass.sourceSansProSemiBold(
                          size: 12.0,
                          color: ColorConst.greyB0,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.off(DownloadScreen());
                      },
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
