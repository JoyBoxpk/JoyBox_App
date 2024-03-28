import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:joybox/core/app_export.dart';
import 'package:joybox/widgets/common_appbar.dart';

class SettingScren extends StatelessWidget {
  const SettingScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        text: "Settings",
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.symmetric(vertical: 60.0, horizontal: 40.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: "assets/images/settings_screen_img1.svg",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Account")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.redAccent,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SettingsRowItemButton(
                    text: "Edit Profile",
                  ),
                  SettingsRowItemButton(
                    text: "Change Password",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SettingsRowItemButton extends StatelessWidget {
  const SettingsRowItemButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(text), Icon(Icons.keyboard_arrow_right_outlined)],
      ),
    );
  }
}
