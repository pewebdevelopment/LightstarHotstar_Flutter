import 'dart:async';

import 'package:get/get.dart';
import 'package:lightstar/screen/auth/login/login_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    Timer(
      Duration(seconds: 5),
      () {
        Get.to(()=>LoginScreen());
      },
    );
    super.onInit();
  }
}
