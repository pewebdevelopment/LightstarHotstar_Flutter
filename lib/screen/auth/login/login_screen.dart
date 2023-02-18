import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/auth/signup/signup_screen.dart';
import 'package:lightstar/utiles/utiles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    _modalBottomSheetMenu();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      body: Center(
        child: SizedBox(
          height: 131,
          width: 135,
          child: Image(
            image: AssetImage(
              ImageConst.splashBg,
            ),
          ),
        ),
      ),
    );
  }

  void _modalBottomSheetMenu() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await showModalBottomSheet(
          context: context,
          builder: (builder) {
            return Container(
              height: 295,
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                color: ColorConst.appColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Log in to continue",
                    style: TextStyleClass.sourceSansProSemiBold(
                      size: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  CommonButton(
                    title: "Don’t Have a Account?",
                    onPress: () {
                      Get.to(() => SingUpScreen());
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      "or",
                      style: TextStyleClass.sourceSansProSemiBold(
                        size: 16.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CommonTextFieldMo(
                    hintText: 'Your mobile number',
                  ),
                ],
              ),
            );
          },
          backgroundColor: Colors.transparent,
          isDismissible: false,
        );
      },
    );
  }
}
