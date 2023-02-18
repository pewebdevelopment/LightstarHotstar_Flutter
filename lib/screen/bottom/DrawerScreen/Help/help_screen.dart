import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/Help/controller/help_controller.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/Help/help2_screen.dart';

class HelpScreen extends StatelessWidget {
  final List languageList = ["English", "Hindi", "Tamil", "Telugu"];
  final HelpController helpController = Get.put(HelpController());

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(ImageConst.appLogo),
                      Text(
                        "Devon Lane",
                        style: TextStyleClass.sourceSansProSemiBold(
                          size: 14.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "How can we help you today?",
                    style: TextStyleClass.sourceSansProSemiBold(
                      size: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.search,
                            color: ColorConst.white),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorConst.white, width: 1),
                            borderRadius: BorderRadius.circular(6)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorConst.white, width: 1),
                            borderRadius: BorderRadius.circular(6)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorConst.white, width: 1),
                            borderRadius: BorderRadius.circular(6)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: ColorConst.white, width: 1),
                            borderRadius: BorderRadius.circular(6)),
                        hintText: "Search queries or error code",
                        hintStyle: TextStyleClass.sourceSansProRegular(
                          size: 14.0,
                        ),
                        fillColor: ColorConst.grey3A,
                        filled: true),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Top Searches:",
                        style: TextStyleClass.sourceSansProSemiBold(
                          size: 14.0,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Login Troubles",
                        style: TextStyleClass.sourceSansProRegular(
                            size: 14.0, color: ColorConst.grey8E),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "\u2022  Billing Issues",
                        style: TextStyleClass.sourceSansProRegular(
                            size: 14.0, color: ColorConst.grey8E),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "\u2022  Can’t find desired content",
                    style: TextStyleClass.sourceSansProRegular(
                        size: 14.0, color: ColorConst.grey8E),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
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
                                  () => helpController.selectedIndex.value ==
                                          index
                                      ? Container(
                                          height: 27,
                                          width: 50,
                                          alignment: Alignment.center,
                                          child: Text(
                                            languageList[index],
                                            style: TextStyleClass
                                                .sourceSansProRegular(
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
                                            style: TextStyleClass
                                                .sourceSansProRegular(
                                                    size: 10.0),
                                          ),
                                        ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Text(
                    "Top Categories",
                    style: TextStyleClass.sourceSansProSemiBold(
                      size: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListView.builder(
                    itemCount: helpController.topCategoryList.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: InkWell(
                        onTap: (){
                          Get.to(Help2Screen());
                        },
                        child: Container(
                          height: 66,
                          width: Get.width,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  helpController.topCategoryList[index],
                                  style: TextStyleClass.sourceSansProSemiBold(
                                    size: 16.0,
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
                          decoration: BoxDecoration(
                              color: ColorConst.grey3A,
                              borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Top Queries",
                    style: TextStyleClass.sourceSansProSemiBold(
                      size: 18.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20  ,
                ),
                ListView.builder(
                  itemCount: helpController.topQueriList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                helpController.topQueriList[index],
                                style: TextStyleClass.sourceSansProRegular(
                                  size: 14.0,
                                  color: ColorConst.greyB0
                                ),
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
                     index==(helpController.topQueriList.length-1)?Container(): Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Divider(
                          color: ColorConst.grey48,
                          thickness: 1,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 30),
                  child: Text(
                    "All Categories",
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
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Billing Help",
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
                  itemCount: helpController.billingHelpList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                helpController.billingHelpList[index],
                                style: TextStyleClass.sourceSansProRegular(
                                    size: 14.0,
                                    color: ColorConst.greyB0
                                ),
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
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(
                    color: ColorConst.grey48,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Creating an account",
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
                  itemCount: helpController.createAccountList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                helpController.createAccountList[index],
                                style: TextStyleClass.sourceSansProRegular(
                                    size: 14.0,
                                    color: ColorConst.greyB0
                                ),
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
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(
                    color: ColorConst.grey48,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Cancellations & Refunds",
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
                  itemCount: helpController.cancellationList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                helpController.cancellationList[index],
                                style: TextStyleClass.sourceSansProRegular(
                                    size: 14.0,
                                    color: ColorConst.greyB0
                                ),
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
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(
                    color: ColorConst.grey48,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Our Features",
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
                  itemCount: helpController.featureList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                helpController.featureList[index],
                                style: TextStyleClass.sourceSansProRegular(
                                    size: 14.0,
                                    color: ColorConst.greyB0
                                ),
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
                SizedBox(
                  height: 20 ,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
