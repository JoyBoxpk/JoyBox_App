import 'package:flutter/material.dart';
import 'package:joybox/widgets/custom_image_view.dart';

class CommonSocialIconButton extends StatelessWidget {
  final String imagePath;

  const CommonSocialIconButton({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0XFFEE452E),
      ),
      child: CustomImageView(
        imagePath: imagePath,
        color: Colors.white,
      ),
    );
  }
}