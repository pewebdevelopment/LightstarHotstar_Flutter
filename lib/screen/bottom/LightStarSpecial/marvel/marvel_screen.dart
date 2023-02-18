import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/image.dart';
import 'package:lightstar/utiles/utiles.dart';

class MarvelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage(
                    ImageConst.marvelB,
                  ),
                ),
                Positioned(
                  top: 50,
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: ColorConst.white,
                    ),
                  ),
                ),
              ],
            ),

            ///Marvel Cinematic Universe
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Marvel Cinematic Universe"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: mar1List),

            ///I Am Groot
            SizedBox(
              height: 25,
            ),
            commonRow(title: "I Am Groot"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: mar2List),

            ///Marvel Cinematic Universe Phase One
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Marvel Cinematic Universe Phase One"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: mar4List),

            ///Marvel Cinematic Universe Phase Two
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Marvel Cinematic Universe Phase Two"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: mar5List),

            ///Marvel Cinematic Universe Phase Three
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Marvel Cinematic Universe Phase Three"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: mar6List),

            ///Marvel Cinematic Universe Phase Four
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Marvel Cinematic Universe Phase Four"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: mar7List),

            ///Marvel Cinematic Universe in Timeline
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Marvel Cinematic Universe in Timeline"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: mar8List),

            ///Welcome to the Spider-verse
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Welcome to the Spider-verse"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: mar3List),

            ///Marvel Live Action Series and Specials
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Marvel Live Action Series and Specials"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: mar9List),

            ///Marvel Legacy Movies
            SizedBox(
              height: 25,
            ),
            commonRow(title: "Marvel Legacy Movies"),
            SizedBox(
              height: 10,
            ),
            commonListView(list: mar10List),

            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
    );
  }

  final List mar1List = [
    ImageConst.mar1,
    ImageConst.mar2,
    ImageConst.mar3,
    ImageConst.mar1,
    ImageConst.mar2,
    ImageConst.mar3,
  ];
  final List mar2List = [
    ImageConst.mar4,
    ImageConst.mar5,
    ImageConst.mar6,
    ImageConst.mar4,
    ImageConst.mar5,
    ImageConst.mar6,
  ];
  final List mar3List = [
    ImageConst.mar7,
    ImageConst.mar8,
    ImageConst.mar9,
    ImageConst.mar7,
    ImageConst.mar8,
    ImageConst.mar9,
  ];

  final List mar4List = [
    ImageConst.mar10,
    ImageConst.mar11,
    ImageConst.mar10,
    ImageConst.mar11,
    ImageConst.mar10,
    ImageConst.mar11,
  ];
  final List mar5List = [
    ImageConst.mar12,
    ImageConst.mar13,
    ImageConst.mar12,
    ImageConst.mar13,
    ImageConst.mar12,
    ImageConst.mar13,
  ];
  final List mar6List = [
    ImageConst.mar14,
    ImageConst.mar15,
    ImageConst.mar14,
    ImageConst.mar15,
    ImageConst.mar14,
    ImageConst.mar15,
  ];

  final List mar7List = [
    ImageConst.mar16,
    ImageConst.mar17,
    ImageConst.mar16,
    ImageConst.mar17,
    ImageConst.mar16,
    ImageConst.mar17,
  ];
  final List mar8List = [
    ImageConst.mar18,
    ImageConst.mar19,
    ImageConst.mar18,
    ImageConst.mar19,
    ImageConst.mar18,
    ImageConst.mar19,
  ];
  final List mar9List = [
    ImageConst.mar20,
    ImageConst.mar21,
    ImageConst.mar20,
    ImageConst.mar21,
    ImageConst.mar20,
    ImageConst.mar21,
  ];
  final List mar10List = [
    ImageConst.mar22,
    ImageConst.mar23,
    ImageConst.mar22,
    ImageConst.mar23,
    ImageConst.mar22,
    ImageConst.mar23,
  ];
}
