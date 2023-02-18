import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/MyAccount/subScreen/creat_pin_screen.dart';
import 'package:lightstar/utiles/utiles.dart';
import 'package:pinput/pin_put/pin_put.dart';

class VerifyAccountScreen extends StatelessWidget {
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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Verify Your Account",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 18.0,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter the 5-digit code sent to ",
                      style: TextStyleClass.sourceSansProSemiBold(
                        color: ColorConst.greyB0,
                        size: 15.0,
                      ),
                    ),
                    TextSpan(
                      text: "+91 12345 67890",
                      style: TextStyleClass.sourceSansProSemiBold(
                        color: ColorConst.butColor,
                        size: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              PinPut(
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
              SizedBox(height: 30),
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
                height: 400,
              ),
              CommonButton(
                title: 'Continue',
                onPress: () {
                  Get.off(() => CreatePinScreen());
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
