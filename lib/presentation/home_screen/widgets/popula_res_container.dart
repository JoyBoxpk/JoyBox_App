import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:joybox/core/app_export.dart';

import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_rating_bar.dart';

class populaResContainer extends StatelessWidget {
  const populaResContainer({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350.v,
          child: Image.asset("assets/images/img2_home_screen.png"),
        ),
        Positioned(
          left: 6,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            alignment: Alignment.centerLeft,
            width: 110.h,
            height: 30.v,
            decoration: BoxDecoration(
                color: Color(0xFFFFD726),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                )),
            child: Text(title),
          ),
        ),
        Positioned(
          bottom: -57,
          left: 3,
          child: Image.asset("assets/images/img3_home_screen.png",
              width: 160, height: 160),
        ),
        Positioned(
          right: 8,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
              size: 20.0,
            ),
          ),
        ),
      ],
    );
  }
}
