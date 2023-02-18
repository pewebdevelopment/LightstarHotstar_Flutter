import 'package:get/get.dart';

class HomeController extends GetxController {
  var sliderIndex = 1.obs;

  var sliderTvIndex = 1.obs;

  var sliderMovieIndex = 1.obs;

  var sliderLiveIndex = 1.obs;
  var sliderSpecialIndex = 1.obs;
  var isSelected = false.obs;

  final List<Map> bottomSheetList = [
    {"text":"Auto","quality":"","isSelect":false.obs},
    {"text":"Full HD","quality":"457 MB","isSelect":false.obs},
    {"text":"HD","quality":"244 MB","isSelect":false.obs},
    {"text":"SD","quality":"154 MB  ","isSelect":false.obs},
  ];

  final List<Map> audioLanguageList = [
    {"text":"हिन्दी","quality":"Hindi","isSelect":false.obs},
    {"text":"বাংলা","quality":"Bangali","isSelect":false.obs},
    {"text":"తెలుగు","quality":"Telugu","isSelect":false.obs},
    {"text":"മലയാളം","quality":"Malayalam","isSelect":false.obs},
    {"text":"தமிழ்","quality":"Tamil","isSelect":false.obs},
  ];

  final List<Map> subtitlesList = [
    {"text":"English","quality":"","isSelect":false.obs},
    {"text":"हिन्दी","quality":"","isSelect":false.obs},
    {"text":"తెలుగు","quality":"","isSelect":false.obs},
    {"text":"മലയാളം","quality":"","isSelect":false.obs},
    {"text":"Off","quality":"","isSelect":false.obs},
  ];

  final List<Map> reportList = [
    {"text":"Buffering and Connection Problem","subText":"Frequent buffering, playback won’t start, or other problem"},
    {"text":"Playback Problem","subText":"Frequent buffering, playback won’t start, or other problem"},
    {"text":"Video Problem","subText":"Frequent buffering, playback won’t start, or other problem"},
    {"text":"Sound Problem","subText":"Frequent buffering, playback won’t start, or other problem"},
    {"text":"Subtitles and Captions Problem","subText":"Frequent buffering, playback won’t start, or other problem"},
  ];
}
