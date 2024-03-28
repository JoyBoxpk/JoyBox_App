import 'package:flutter/material.dart';
import '../../../core/utils/image_constant.dart';

class FavouriteMealItemModel {
  final String title1;
  final String title2;
  final int price;
  final double rating;
  final String imagePath;

  FavouriteMealItemModel({
    required this.title1,
    required this.title2,
    required this.price,
    required this.rating,
    required this.imagePath,
  });

  static final List<FavouriteMealItemModel> itemsList = [
    FavouriteMealItemModel(
      title1: "McDonald's",
      title2: "DHA PHASE 8",
      price: 599,
      rating: 4,
      imagePath: 'assets/images/img10_home_screen.png',
    ),
    FavouriteMealItemModel(
      title1: "KFC",
      title2: "Gulshan Block 6",
      price: 599,
      rating: 3,
      imagePath: 'assets/images/img11_home_screen.png',
    ),

  ];
}
