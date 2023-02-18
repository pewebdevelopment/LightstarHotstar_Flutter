import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/MyAccount/subScreen/pin_set_screen.dart';
import 'package:lightstar/utiles/utiles.dart';
import 'package:pinput/pin_put/pin_put.dart';

class ConfirmPinScreen extends StatelessWidget {
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
                "Confirm PIN",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 18.0,
                ),
              ),
              Text(
                "Please enter a 5-digit PIN to enable parental lock",
                style: TextStyleClass.sourceSansProSemiBold(
                  size: 16.0,
                  color: ColorConst.greyB0,
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
              /*  SizedBox(height: 30),
              Text(
                "By clicking continue, you confirm that you are 18+ years of age",
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.greyB0,
                ),
              ),*/
              SizedBox(
                height: 430,
              ),
              CommonButton(
                title: 'Continue',
                onPress: () {
                  Get.to(() => PinSetScreen());
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
