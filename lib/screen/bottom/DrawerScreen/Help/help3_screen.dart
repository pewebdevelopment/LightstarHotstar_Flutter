import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/DrawerScreen/Help/controller/help_controller.dart';

class Help3Screen extends StatelessWidget {
  Help3Screen({Key? key}) : super(key: key);
  final List languageList = ["English", "Hindi", "Tamil", "Telugu"];
  final HelpController helpController = Get.find();

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
      body: Padding(
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
                  "Help Desk.",
                  style: TextStyleClass.sourceSansProSemiBold(
                    size: 18.0,
                  ),
                ),
              ],
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
                                        borderRadius: BorderRadius.circular(10),
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
            SizedBox(
              height: 30,
            ),
            Text(
              "I have recently renewed my Lightstar VIP subscription. Will I get a refund so I can subscribe to the new plan? ",
              style: TextStyleClass.sourceSansProSemiBold(
                size: 19.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Post 1st Sep'21, all our existing Lightstar VIP users will continue to enjoy the benefits of their current plan until the membership expires. You will be able to login to TV and other supported devices as you used to previously and also get access to all English content on our platform.",
              style: TextStyleClass.sourceSansProRegular(
                  size: 14.0, color: ColorConst.greyB0),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Post the expiry of your current Lightstar VIP plan, the new Mobile plan will be applicable.",
              style: TextStyleClass.sourceSansProRegular(
                  size: 14.0, color: ColorConst.greyB0),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              cursorColor: ColorConst.butColor,
              style: TextStyleClass.sourceSansProRegular(
                  size: 14.0, color: ColorConst.butColor),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: ColorConst.butColor,width: 1)
                ),
                hintText: "Did you find it helpful?",
                hintStyle: TextStyleClass.sourceSansProRegular(
                    size: 14.0, color: ColorConst.butColor),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: ColorConst.butColor,width: 1)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: ColorConst.butColor,width: 1)
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: ColorConst.butColor,width: 1)
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: SvgPicture.asset(ImageConst.helpEmojis),
                ),
                filled: true,
                fillColor: ColorConst.butColor.withOpacity(0.08)
              ),
            ),
            Spacer(),
            Text(
              "Need more help?",
              style: TextStyleClass.sourceSansProSemiBold(
                size: 18.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
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
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
