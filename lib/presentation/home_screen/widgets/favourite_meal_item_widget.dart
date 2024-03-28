import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:joybox/presentation/home_screen/models/favourite_meal_item_model.dart';
import '../../../widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';

class FavouriteMealItemWidget extends StatelessWidget {
  const FavouriteMealItemWidget({
    super.key,
    required this.title1,
    required this.title2,
    required this.rating,
    required this.price,
    required this.imagePath,
  });

  // final FavouriteMealItemModel item;

  final String title1;
  final String title2;
  final double rating;
  final int price;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 200,
          height: 290,
          decoration: BoxDecoration(
            color: Color(0xFFFFD726),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              bottomLeft: Radius.circular(50.0),
              topRight: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0),
            ),
          ),
        ),
        Positioned(
          top: 15,
          right: 34,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title1,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.h,
                ),
              ),
              Text(
                title2,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.h,
                ),
              ),
              CustomRatingBar(
                itemSize: 18.0,
                color: Colors.redAccent,
                initialRating: 4,
              ),
            ],
          ),
        ),
        Positioned(
            left: -35,
            bottom: 45,
            child: Image.asset('assets/images/img10_home_screen.png')),
        Positioned(
          bottom: 15.0,
          right: 10.0,
          child: Row(
            children: [
              Text(
                "Rs. ${price}",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 30.h),
              Icon(Icons.shopping_cart, color: Colors.red, size: 30.0),
            ],
          ),
        ),
      ],
    );
  }
}
