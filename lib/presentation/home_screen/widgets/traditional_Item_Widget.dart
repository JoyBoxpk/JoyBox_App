import '../models/traditional_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';

// ignore: must_be_immutable
class traditional_Item_Widget extends StatelessWidget {
  traditional_Item_Widget(
    this.TradtionalItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TradtionalRestaurantsItemModel TradtionalItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 122.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 131.v,
          width: 122.h,
          margin: EdgeInsets.only(top: 1.v),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 53.v),
                      Text(
                        TradtionalItemModelObj.theEastEnd!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: TradtionalItemModelObj?.theEastEnd1,
                height: 96.v,
                width: 105.h,
                radius: BorderRadius.circular(
                  5.h,
                ),
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
