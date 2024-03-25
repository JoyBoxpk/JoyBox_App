import 'package:flutter/widgets.dart';
import 'package:joybox/core/app_export.dart';

Widget DividerWidget(
    BuildContext context, {
    required String menu,
    required String seeAll,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          menu,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 6.v,
            bottom: 3.v,
          ),
          child: Text(
            seeAll,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
