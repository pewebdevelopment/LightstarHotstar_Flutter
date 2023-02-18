import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/Help/controller/help_controller.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/Help/help3_screen.dart';

class Help2Screen extends StatelessWidget {
  final HelpController helpController = Get.find();
  final List languageList = ["English", "Hindi", "Tamil", "Telugu"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.black27,
      appBar: AppBar(
        backgroundColor: ColorConst.black27,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Help",
          style: TextStyleClass.sourceSansProSemiBold(
            size: 18.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(ImageConst.appLogo),
                  Text(
                    "Help Desk.",
                    style: TextStyleClass.sourceSansProSemiBold(
                      size: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                    "Read in:",
                    style: TextStyleClass.sourceSansProSemiBold(
                      size: 14.0,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 27,
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: languageList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              helpController.selectedIndex.value = index;
                            },
                            child: Obx(
                              () => helpController.selectedIndex.value == index
                                  ? Container(
                                      height: 27,
                                      width: 50,
                                      alignment: Alignment.center,
                                      child: Text(
                                        languageList[index],
                                        style:
                                            TextStyleClass.sourceSansProRegular(
                                                size: 10.0),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: ColorConst.grey3A),
                                    )
                                  : Container(
                                      height: 30,
                                      width: 50,
                                      alignment: Alignment.center,
                                      child: Text(
                                        languageList[index],
                                        style:
                                            TextStyleClass.sourceSansProRegular(
                                                size: 10.0),
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Subscription, Plans and Pricing",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Divider(
                color: ColorConst.grey48,
                thickness: 1,
              ),
            ),
            ListView.builder(
              itemCount: helpController.subscriptionList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: InkWell(
                      onTap: (){
                        Get.to(Help3Screen());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              helpController.subscriptionList[index],
                              style: TextStyleClass.sourceSansProRegular(
                                  size: 14.0, color: ColorConst.greyB0),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ColorConst.greyB0,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Divider(
                      color: ColorConst.grey48,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset(ImageConst.helpImage),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Need more help?",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 18.0,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: ColorConst.butColor,
                      child: Text(
                        "Contact Us",
                        style: TextStyleClass.sourceSansProBold(
                          size: 14.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: ColorConst.butColor,
                      child: Text(
                        "Chat With Us",
                        style: TextStyleClass.sourceSansProBold(
                          size: 14.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
