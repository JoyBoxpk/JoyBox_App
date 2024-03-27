import '../models/thirtynine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';

// ignore: must_be_immutable
class ThirtynineItemWidget extends StatelessWidget {
  ThirtynineItemWidget(
    this.thirtynineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtynineItemModel thirtynineItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 156.v,
          width: 266.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_4_9".tr,
                    style: CustomTextStyles.bodySmallWhiteA700,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 145.v,
                  width: 266.h,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          height: 144.v,
                          width: 118.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup38306,
                                height: 123.v,
                                width: 110.h,
                                alignment: Alignment.topLeft,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.img146889KingBur,
                                height: 105.v,
                                width: 107.h,
                                alignment: Alignment.bottomRight,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          height: 130.v,
                          width: 150.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup38305,
                                height: 101.v,
                                width: 110.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 14.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgXxxxxd1,
                                height: 64.v,
                                width: 150.h,
                                alignment: Alignment.bottomCenter,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 119.v,
          width: 110.h,
          margin: EdgeInsets.only(top: 36.v),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorRed500,
                height: 49.v,
                width: 110.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  height: 91.v,
                  width: 92.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle88x92,
                        height: 88.v,
                        width: 92.h,
                        alignment: Alignment.topCenter,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLayer13Copy,
                        height: 88.v,
                        width: 92.h,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle82x87,
                        height: 82.v,
                        width: 87.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 1.v),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 29.v,
                  width: 20.h,
                  margin: EdgeInsets.only(bottom: 31.v),
                  decoration: BoxDecoration(
                    color: appTheme.red500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
