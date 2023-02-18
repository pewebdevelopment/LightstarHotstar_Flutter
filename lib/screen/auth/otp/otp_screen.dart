import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/auth/NewIn/new_light_star_screen.dart';
import 'package:lightstar/utiles/utiles.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OtpScreen extends StatelessWidget {
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(50),
    );
  }

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
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter the 5-digit code sent to\n",
                      style: TextStyleClass.sourceSansProRegular(
                        color: ColorConst.white,
                      ),
                    ),
                    TextSpan(
                      text: "+91 12345 67890",
                      style: TextStyleClass.sourceSansProRegular(
                        color: ColorConst.butColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: PinPut(
                  fieldsCount: 5,
                  textStyle: TextStyleClass.sourceSansProBold(
                    size: 24.0,
                    color: ColorConst.white,
                  ),
                  cursorColor: ColorConst.black,
                  eachFieldHeight: 55,
                  eachFieldWidth: 55,
                  focusNode: _pinPutFocusNode,
                  submittedFieldDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: ColorConst.white,
                    ),
                    color: Colors.transparent,
                  ),
                  selectedFieldDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: ColorConst.white,
                    ),
                    color: Colors.transparent,
                  ),
                  followingFieldDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(50),
                    /* border: Border.all(
                        color: ColorConst.appColor,
                      ),*/
                    color: ColorConst.white.withOpacity(0.1),
                  ),
                  disabledDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(50),
                    color: ColorConst.white,
                    border: Border.all(
                      color: ColorConst.appColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Re-send code',
                    style: TextStyle(
                      fontFamily: "SourceSansPro",
                      color: ColorConst.butColor,
                      decoration: TextDecoration.underline,
                      decorationColor: ColorConst.butColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              CommonButton(
                title: 'Continue',
                onPress: () {
                  Get.to(() => NewLightStarScreen());
                },
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
