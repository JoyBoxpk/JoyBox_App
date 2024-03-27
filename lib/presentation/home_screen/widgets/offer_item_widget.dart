import '../models/OfferItemModel.dart';
import 'package:joybox/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';

// ignore: must_be_immutable
class BuildOfferWidgetItems extends StatelessWidget {
  BuildOfferWidgetItems(
    this.menuofferItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OfferItemModel menuofferItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 191.v,
        width: 327.h,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(
                  top: 19.v,
                  right: 19.h,
                  bottom: 15.v,
                ),
                decoration: AppDecoration.fillRed900.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 13.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 124.h,
                            child: Text(
                              menuofferItemModelObj.getOffClock!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.titleLargeWhiteA700.copyWith(
                                height: 1.30,
                              ),
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            menuofferItemModelObj.ramadanOffer!,
                            style: CustomTextStyles.bodySmallWhiteA700_1,
                          ),
                          SizedBox(height: 16.v),
                          CustomElevatedButton(
                            height: 26.v,
                            width: 94.h,
                            text: "lbl_grab_offer".tr,
                            buttonStyle: CustomButtonStyles.outlineBlackTL13,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeRed50001,
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: menuofferItemModelObj?.image,
                      // height: 137.v,
                      // width: 154.h,
                      fit:BoxFit.contain     ,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      margin: EdgeInsets.only(left: 16.h),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: menuofferItemModelObj?.image1,
              // height: 171.v,
              // width: 193.h,
              fit: BoxFit.contain,
              alignment: Alignment.centerRight,
            ),
          ],
        ),
      ),
    );
  }
}
