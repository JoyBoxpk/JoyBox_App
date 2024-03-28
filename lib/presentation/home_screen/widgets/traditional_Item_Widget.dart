import '../models/traditional_restaurant_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';

// ignore: must_be_immutable
class TraditionalItemWidget extends StatelessWidget {
  const TraditionalItemWidget({super.key, required this.traditionalItem});

  final TraditionalRestaurantsItemModel traditionalItem;


  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 8.0),
          alignment: Alignment.bottomCenter,
          width: 122.h,
          height: 115.v,
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
            color: traditionalItem.color,
          ),
          child: Text(
            traditionalItem.title,
            style: theme.textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w500, fontSize: 13.0),
          ),
        ),
        Positioned(
          top: -38,
          left: 9,
          child: CustomImageView(
            imagePath: traditionalItem.imagePath,
            height: 120.v,
            width: 105.h,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
        ),
      ],
    );
  }
}
