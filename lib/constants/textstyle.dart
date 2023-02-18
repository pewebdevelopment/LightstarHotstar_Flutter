import 'package:flutter/material.dart';
import 'package:lightstar/constants/color.dart';

class TextStyleClass {
  ///SourceSansPro Regular
  static sourceSansProRegular({var color, var size}) {
    return TextStyle(
      color: color ?? ColorConst.white,
      fontSize: size ?? 14.0,
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w400,
    );
  }

  ///SourceSansPro semiBold
  static sourceSansProSemiBold({var color, var size}) {
    return TextStyle(
      color: color ?? ColorConst.white,
      fontSize: size ?? 14.0,
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w600,
    );
  }

  ///SourceSansProBold
  static sourceSansProBold({var color, var size}) {
    return TextStyle(
      color: color ?? ColorConst.white,
      fontSize: size ?? 14.0,
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w700,
    );
  }

  ///SourceSansPro Regular
  static poppinsRegular({var color, var size}) {
    return TextStyle(
      color: color ?? ColorConst.white,
      fontSize: size ?? 14.0,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w400,
    );
  }

  ///SourceSansPro semiBold
  static poppinsSemiBold({var color, var size}) {
    return TextStyle(
      color: color ?? ColorConst.white,
      fontSize: size ?? 14.0,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
    );
  }
}
