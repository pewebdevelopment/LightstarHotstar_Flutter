import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lightstar/constants/color.dart';
import 'package:lightstar/constants/textstyle.dart';
import 'package:lightstar/screen/bottom/LightStarSpecial/Allmovies/all_movies_screen.dart';
import 'package:lightstar/screen/bottom/home/home_utiles.dart';

///common button
// ignore: must_be_immutable
class CommonButton extends StatelessWidget {
  String title;

  // ignore: prefer_typing_uninitialized_variables
  var fontSize;

  // ignore: prefer_typing_uninitialized_variables
  var onPress;

  // ignore: prefer_typing_uninitialized_variables
  var color;

  CommonButton(
      {required this.title, this.fontSize, required this.onPress, this.color});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      minWidth: Get.width,
      height: 50,
      elevation: 0,
      color: color ?? ColorConst.butColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        title,
        style: TextStyleClass.sourceSansProBold(
          size: fontSize ?? 14.0,
          color: ColorConst.white,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CommonTextFieldMo extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;

  // ignore: prefer_typing_uninitialized_variables
  var keyBoardType;

  // ignore: prefer_typing_uninitialized_variables
  var onChange;

  CommonTextFieldMo({
    required this.hintText,
    this.controller,
    this.keyBoardType,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: Get.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConst.white,
        ),
        borderRadius: BorderRadius.circular(6),
        color: ColorConst.white.withOpacity(0.08),
      ),
      child: TextFormField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: keyBoardType,
        onChanged: onChange ?? (val) {},
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyleClass.sourceSansProRegular(),
          prefixIcon: SizedBox(
            width: 70,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "+91",
                    style: TextStyleClass.sourceSansProSemiBold(size: 18.0),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 20,
                    child: VerticalDivider(
                      width: 1.5,
                      color: ColorConst.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

commonRow({title,onTap}) {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyleClass.sourceSansProSemiBold(
            size: 16.0,
          ),
        ),
        SizedBox(
          height: 20,
          child: IconButton(
            onPressed: onTap??() {
              Get.to(() => AllMovieScreen());
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              color: ColorConst.white,
              size: 15,
            ),
          ),
        ),
      ],
    ),
  );
}

commonListView({list, onTap}) {
  return SizedBox(
    height: 170,
    child: ListView.builder(
      itemCount: list.length,
      padding: EdgeInsets.only(left: 20),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 20),
          child: InkWell(
            onTap: onTap ?? () {
              bottomSheet1();
            },
            child: Container(
              width: 125,
              // margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(list[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}

commonListView85Image({image}) {
  return SizedBox(
    height: 85,
    child: ListView.builder(
      itemCount: 8,
      padding: EdgeInsets.only(left: 20),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            onTap: (){
              bottomSheet1();
            },
            child: Container(
              width: 150,
              // margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}

commonListView85List({list}) {
  return SizedBox(
    height: 85,
    child: ListView.builder(
      itemCount: list.length,
      padding: EdgeInsets.only(left: 20),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            onTap: (){
              bottomSheet1();
            },
            child: Container(
              width: 150,
              // margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(list[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}

commonGrid({list,onTap}) {
  return GridView.builder(
    itemCount: list.length,
    padding: EdgeInsets.only(bottom: 80, top: 20),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      childAspectRatio: 1.8,
    ),
    itemBuilder: (BuildContext context, int index) {
      return InkWell(
        onTap: onTap??(){},
        child: Container(
          height: 92,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(
                list[index],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    },
  );
}

commonGrid3({list}) {
  return GridView.builder(
    shrinkWrap: true,
    itemCount: list.length,
    // padding: EdgeInsets.symmetric(horizontal: 20),
    physics: NeverScrollableScrollPhysics(),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 13,
      mainAxisSpacing: 15,
      childAspectRatio: 2 / 2.7,
    ),
    itemBuilder: (context, index) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(
              list[index],
            ),
          ),
        ),
      );
    },
  );
}

commonButMyAc({var title, var onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 50,
      width: Get.width,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: ColorConst.grey3A,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        title,
        style: TextStyleClass.sourceSansProSemiBold(),
      ),
    ),
  );
}
