import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber400,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange600,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray600,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red50001,
      );
  static BoxDecoration get fillRed900 => BoxDecoration(
        color: appTheme.red900,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration gradientWhiteAToAmberAWithBlur(BuildContext context) {
    return BoxDecoration(
      border: Border.all(
        color: appTheme.black900.withOpacity(0.1),
        width: 1.h,
       // strokeAlign: strokeAlignOutside,
      ),
     // border: Border.all(style: BorderStyle.none),
      // Apply gradient background
      gradient: LinearGradient(
        begin: Alignment(0.5, 0),
        end: Alignment(0.3, 1),
        colors: [
          appTheme.whiteA700.withOpacity(0.7), // Adjust opacity
          appTheme.amberA200.withOpacity(0.4), // Adjust opacity
        ],
      ),
      // Apply blur effect using BackdropFilter
      borderRadius: BorderRadius.circular(20.h), // Adjust blur radius
      // boxShadow: [
      //   BoxShadow(
      //     color: appTheme.black900.withOpacity(0.5), // Adjust shadow color and opacity
      //     spreadRadius: 5.h, // Adjust spread radius
      //     blurRadius: 10.h, // Adjust blur radius
      //     offset: Offset(0, 4), // Adjust offset
      //   ),
      // ],
    );
  }
  
  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.amber400,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray50,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderLR5 => BorderRadius.horizontal(
        right: Radius.circular(5.h),
      );
  static BorderRadius get customBorderTL5 => BorderRadius.vertical(
        top: Radius.circular(5.h),
      );
  static BorderRadius get customBorderTL50 => BorderRadius.only(
        topLeft: Radius.circular(50.h),
        topRight: Radius.circular(20.h),
        bottomLeft: Radius.circular(50.h),
        bottomRight: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder27 => BorderRadius.circular(
        27.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
