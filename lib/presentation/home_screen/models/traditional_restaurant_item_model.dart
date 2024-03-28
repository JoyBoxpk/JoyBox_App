import 'package:flutter/material.dart';
import '../../../core/utils/image_constant.dart';

class TraditionalRestaurantsItemModel {
  final String title;
  final String imagePath;
  final Color? color;

  TraditionalRestaurantsItemModel({
    required this.title,
    required this.imagePath,
    this.color = Colors.white,
  });

  static final List<TraditionalRestaurantsItemModel> itemsList = [
    TraditionalRestaurantsItemModel(
      title: "The East End",
      imagePath: ImageConstant.imgRectangle4684,
    ),
    TraditionalRestaurantsItemModel(
      title: "Bam-Bau",
      imagePath: ImageConstant.imgRectangle4685,
      color: Color(0xFFFFD726),
    ),
    TraditionalRestaurantsItemModel(
      title: "Lotus Court",
      imagePath: ImageConstant.imgRectangle4686,
    ),
    TraditionalRestaurantsItemModel(
      title: "The East End",
      imagePath: ImageConstant.imgRectangle4684,
      color: Color(0xFFFFD726),
    ),
  ];
}
