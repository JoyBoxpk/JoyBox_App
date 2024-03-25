import 'package:flutter/widgets.dart';
import 'package:joybox/core/utils/size_utils.dart';
import 'package:joybox/localization/app_localization.dart';

import '../../../../theme/theme_helper.dart';

class menutabwidget extends StatelessWidget {
  const menutabwidget({
    required this.tabname,
    Key? key,
  }) : super(key: key);

  final String tabname;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.v),
      child: Text(
        tabname.tr,
        style: theme.textTheme.bodySmall,
      ),
    );
  }
}

