import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/screen/splash/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) => Center(
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
      ),
    );
  }
}
