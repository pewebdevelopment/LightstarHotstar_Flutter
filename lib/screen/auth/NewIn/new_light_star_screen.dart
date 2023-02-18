import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/bottomnavigation/bottom_navigation_screen.dart';
import 'package:lightstar/utiles/utiles.dart';

class NewLightStarScreen extends StatelessWidget {
  const NewLightStarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        foregroundColor: ColorConst.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "New to LightStar?\nVerify mobile number to create\naccount.",
              style: TextStyleClass.sourceSansProSemiBold(
                size: 18.0,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CommonTextFieldMo(hintText: 'Your mobile number'),
            Spacer(),
            CommonButton(
              title: 'Continue',
              onPress: () {
                Get.to(() => BottomNavigationScreen());
              },
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "By proceeding you agree to the ",
                      style: TextStyleClass.sourceSansProRegular(
                        color: ColorConst.grey65,
                      ),
                    ),
                    TextSpan(
                      text: "Terms of Use",
                      style: TextStyleClass.sourceSansProRegular(
                        color: ColorConst.butColor,
                      ),
                    ),
                    TextSpan(
                      text: " and ",
                      style: TextStyleClass.sourceSansProRegular(
                        color: ColorConst.grey65,
                      ),
                    ),
                    TextSpan(
                      text: "Privacy Policy.",
                      style: TextStyleClass.sourceSansProRegular(
                        color: ColorConst.butColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
