import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/auth/otp/otp_screen.dart';
import 'package:lightstar/utiles/utiles.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      appBar: AppBar(
        backgroundColor: ColorConst.appColor,
        elevation: 0,
        foregroundColor: ColorConst.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Continue with phone",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 18.0,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              CommonTextFieldMo(hintText: 'Your mobile number'),
              SizedBox(
                height: 420,
              ),
              CommonButton(
                title: 'Continue',
                onPress: () {
                  Get.to(() => OtpScreen());
                },
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "By clicking continue, you agree to our ",
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
                        text: " and acknowledge that you have read our ",
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
      ),
    );
  }
}
