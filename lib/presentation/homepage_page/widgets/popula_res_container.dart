import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';

import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_rating_bar.dart';

class populaResContainer extends StatelessWidget {
  const populaResContainer({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330.v,
      width: 184.h,
      margin: EdgeInsets.only(left: 13.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 300.v,
                  width: 184.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle4417,
                        height: 300.v,
                        width: 184.h,
                        radius: BorderRadius.circular(
                          12.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(right: 9.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  height: 56.v,
                                  width: 162.h,
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: SizedBox(
                                          width: 139.h,
                                          child: Text(
                                            "$title".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .labelLargeWhiteA700Bold
                                                .copyWith(
                                              height: 1.30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMdiFavouriteBorder,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        alignment: Alignment.topRight,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 149.v),
                              CustomElevatedButton(
                                height: 33.v,
                                width: 134.h,
                                text: "lbl_order_now".tr,
                              ),
                              SizedBox(height: 20.v),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 31.v,
                                    width: 69.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 17.h,
                                      vertical: 4.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderLR5,
                                    ),
                                    child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSettingsBlack900,
                                      height: 21.v,
                                      width: 34.h,
                                      alignment: Alignment.topCenter,
                                    ),
                                  ),
                                  
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgSettingsAmber400,
                                    height: 10.v,
                                    width: 11.h,
                                    margin: EdgeInsets.only(
                                      left: 18.h,
                                      top: 11.v,
                                      bottom: 9.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 7.h,
                                      top: 11.v,
                                      bottom: 6.v,
                                    ),
                                    child: Text(
                                      "lbl_free_delivery".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 51.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 133.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 13.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillAmber.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderLR5,
                        ),
                        child: Text(
                          "lbl_lachine".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 54.v),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: CustomRatingBar(
                          initialRating: 4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // SizedBox(height: 10.v), // Added spacing
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 5.v),
              Text(
                "msg_opening_11pm_12am".tr,
                style: CustomTextStyles.labelMediumBlack900,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
