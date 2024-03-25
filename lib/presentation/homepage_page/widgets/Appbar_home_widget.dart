import 'package:flutter/widgets.dart';
import 'package:joybox/core/utils/size_utils.dart';
import 'package:joybox/localization/app_localization.dart';

import '../../../core/app_export.dart';
import '../../../core/utils/image_constant.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_search_view.dart';
import '../provider/homepage_provider.dart';

Widget buildUperWidget(BuildContext context) {
    return IntrinsicWidth(
      child: SizedBox(
        height: 367.v,
        width: 430.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 150.v,
                width: 430.h,
                margin: EdgeInsets.only(bottom: 26.v),
                decoration: BoxDecoration(
                  color: appTheme.gray10001,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle4788,
                    height: 17.v,
                    width: 430.h,
                  ),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 28.h,
                      right: 33.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          decoration: IconButtonStyleHelper.outlineBlack,
                          child: CustomImageView(
                            fit: BoxFit.contain,
                            imagePath: ImageConstant.imgTelevision,
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_deliver_to".tr,
                                  style: CustomTextStyles.bodyMediumRed50001,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowDown,
                                  height: 8.v,
                                  width: 6.h,
                                  margin: EdgeInsets.only(
                                    left: 7.h,
                                    top: 9.v,
                                    bottom: 5.v,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3.v),
                            Text(
                              "msg_4102_pretty_view".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup18125,
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          margin: EdgeInsets.only(top: 3.v),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "msg_what_would_you_like".tr,
                    style: CustomTextStyles.titleLargeMedium,
                  ),
                  SizedBox(height: 25.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Selector<HomepageProvider, TextEditingController?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.searchController,
                        builder: (context, searchController, child) {
                          return CustomSearchView(
                            width: 236.h,
                            controller: searchController,
                            hintText: "msg_find_what_you_need".tr,
                          );
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.outlineBlackTL10,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgClose,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.outlineBlackTL10,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgStreamlineVoiceMail,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(4.h),
                        decoration: IconButtonStyleHelper.outlineBlackTL10,
                        child: CustomImageView(
                          imagePath:
                              'assets/images/translate-black-lineal-16029.png',
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 160.v,
                      width: 396.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 390.h,
                              margin: EdgeInsets.only(
                                left: 6.h,
                                top: 32.v,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //         CustomImageView(
                                  //   imagePath: ImageConstant.imgPngwing102,
                                  //   height: 84.v,
                                  //   width: 94.h,
                                  //   alignment: Alignment.topLeft,
                                  // ),

                                  Container(
                                    margin: EdgeInsets.only(top: 1.v),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 3.h,
                                      vertical: 6.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL5,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 1.v),
                                        SizedBox(
                                          height: 54.v,
                                          width: 64.h,
                                          child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle8x39,
                                                height: 8.v,
                                                width: 39.h,
                                                alignment:
                                                    Alignment.bottomRight,
                                                margin: EdgeInsets.only(
                                                  right: 4.h,
                                                  bottom: 7.v,
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle25x59,
                                                height: 25.v,
                                                width: 59.h,
                                                alignment: Alignment.bottomLeft,
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgPngwing102,
                                                height: 45.v,
                                                width: 50.h,
                                                alignment: Alignment.topRight,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 4.v),
                                        Padding(
                                          padding: EdgeInsets.only(left: 12.h),
                                          child: Text(
                                            "lbl_food".tr,
                                            style: CustomTextStyles
                                                .labelLargeGray400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(top: 1.v),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 3.h,
                                      vertical: 6.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL5,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 1.v),
                                        SizedBox(
                                          height: 54.v,
                                          width: 64.h,
                                          child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle8x39,
                                                height: 8.v,
                                                width: 39.h,
                                                alignment:
                                                    Alignment.bottomRight,
                                                margin: EdgeInsets.only(
                                                  right: 4.h,
                                                  bottom: 7.v,
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle25x59,
                                                height: 25.v,
                                                width: 59.h,
                                                alignment: Alignment.bottomLeft,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle45x50,
                                                height: 45.v,
                                                width: 50.h,
                                                alignment: Alignment.topRight,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 4.v),
                                        Padding(
                                          padding: EdgeInsets.only(left: 12.h),
                                          child: Text(
                                            "lbl_health".tr,
                                            style: CustomTextStyles
                                                .labelLargeGray400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(top: 1.v),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 1.h,
                                      vertical: 8.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL5,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 1.v),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: SizedBox(
                                            height: 45.v,
                                            width: 66.h,
                                            child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle,
                                                  height: 3.v,
                                                  width: 13.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 5.h,
                                                    bottom: 1.v,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle5x25,
                                                  height: 5.v,
                                                  width: 25.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 5.h),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: SizedBox(
                                                    height: 12.v,
                                                    width: 54.h,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle12x54,
                                                          height: 12.v,
                                                          width: 54.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 6.h,
                                                              right: 18.h,
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle1x14,
                                                                  height: 1.v,
                                                                  width: 14.h,
                                                                ),
                                                                SizedBox(
                                                                    height:
                                                                        4.v),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgLayer4Copy,
                                                                  height: 1.v,
                                                                  width: 14.h,
                                                                ),
                                                                SizedBox(
                                                                    height:
                                                                        1.v),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgLayer4Copy2,
                                                                  height: 1.v,
                                                                  width: 14.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.img71,
                                                  height: 44.v,
                                                  width: 50.h,
                                                  alignment:
                                                      Alignment.centerLeft,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 11.v),
                                        Text(
                                          "lbl_toys".tr,
                                          style: CustomTextStyles
                                              .labelLargeGray400,
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(
                                    height: 90.v,
                                    width: 83.h,
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10.h,
                                              vertical: 8.v,
                                            ),
                                            decoration: AppDecoration.fillWhiteA
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL5,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                SizedBox(height: 58.v),
                                                Text(
                                                  "lbl_furniture".tr,
                                                  style: CustomTextStyles
                                                      .labelLargeGray400,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgOqxyzc1,
                                          height: 65.adaptSize,
                                          width: 65.adaptSize,
                                          alignment: Alignment.topCenter,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
