import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import '../../../widgets/custom_rating_bar.dart';
import '../models/fortytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';

// ignore: must_be_immutable
class FortytwoItemWidget extends StatelessWidget {
  FortytwoItemWidget(
    this.fortytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortytwoItemModel fortytwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    print(fortytwoItemModelObj.pngwing);
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        width: 200.h,
        child: Stack(
          alignment: Alignment.centerRight,
          //clipBehavior: Clip.antiAliasWithSaveLayer,

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("McDonald's"),
                Text("DHA PHASE 2"),
                CustomRatingBar(
                  color: Colors.redAccent,
                  initialRating: 4,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10.h),
              decoration: AppDecoration.fillAmber.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL50,
              ),
              child: _buildInsideFavWidget(
                imagePath: fortytwoItemModelObj.pngwing,
              ),
            ),
            Positioned(
              child: CustomImageView(
                imagePath: ImageConstant.imgPngwing66,
                fit: BoxFit.contain,
                width: 240.v,
                height: 140.h,
              ),
            ),
          ],
        ),

        // child: CustomImageView(
        //   imagePath: fortytwoItemModelObj?.pngwing,
        //   height: 169.v,
        //   width: 182.h,
        //   margin: EdgeInsets.only(
        //     top: 63.v,
        //     bottom: 46.v,
        //   ),
        // ),
      ),
    );
  }
}

class _buildInsideFavWidget extends StatelessWidget {
  _buildInsideFavWidget({required this.imagePath, Key? key}) : super(key: key);

  String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 160.v,
      padding: EdgeInsets.all(0.6.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "McDonald's",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.h),
              ),
              Text("DHA PHASE 2"),
              CustomRatingBar(
                color: Colors.redAccent,
                initialRating: 4,
              ),
            ],
          ),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Rs.599",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14.h)),
              CustomImageView(
                imagePath: ImageConstant.imgCart,
                fit: BoxFit.contain,
                width: 40.v,
                height: 26.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
