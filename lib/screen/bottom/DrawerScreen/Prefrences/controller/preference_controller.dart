import 'package:get/get.dart';

class PreferenceController extends GetxController{
  var autoPlayTrailers = false.obs;

  final List<Map> bottomSheetList = [
    {"text":"Auto","quality":"","isSelect":false.obs},
    {"text":"Full HD","quality":"Upto 1080p","isSelect":false.obs},
    {"text":"HD","quality":"Upto 720p","isSelect":false.obs},
    {"text":"SD","quality":"Upto 480p","isSelect":false.obs},
  ];

  final List<Map> bottomSheetList2   = [
    {"text":"Always ask","quality":"","isSelect":false.obs},
    {"text":"Full HD","quality":"Upto 1080p","isSelect":false.obs},
    {"text":"HD","quality":"Upto 720p","isSelect":false.obs},
    {"text":"SD","quality":"Upto 480p","isSelect":false.obs},
  ];
}