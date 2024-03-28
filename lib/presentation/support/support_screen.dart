import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:joybox/core/app_export.dart';
import 'package:joybox/widgets/common_appbar.dart';
import 'package:provider/single_child_widget.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);
  static const String routeName = "support-scren";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CommonAppBar(
        text: "Support",
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
      physics:ScrollPhysics(parent: NeverScrollableScrollPhysics()) ,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: "assets/images/support_screen_img1.svg",
                      ),
                      Positioned(
                        top: 30,
                        right: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello!"),
                            Text("How can we help you?")
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  HelpCenterFeatureWidegt(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      content: "Contact Live chat",
                      imgpath: "assets/images/support_screen_img2.svg"),
                  SizedBox(
                    height: 30,
                  ),
                  HelpCenterFeatureWidegt(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      content: "Sent Us an Email",
                      imgpath: "assets/images/support_screen_img3.svg"),
                  SizedBox(
                    height: 30,
                  ),
                  HelpCenterFeatureWidegt(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      content: "FAQs",
                      imgpath: "assets/images/support_screen_img4.svg"),
                  CustomImageView(
                    alignment: Alignment.bottomRight,
                      imagePath: "assets/images/support_screen_img5.svg",
                      fit: BoxFit.cover)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HelpCenterFeatureWidegt extends StatelessWidget {
  const HelpCenterFeatureWidegt({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.imgpath,
    required this.content,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String imgpath, content;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        width: screenWidth * 0.6,
        height: screenHeight * 0.06,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: imgpath,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(content)
              ],
            ),
            Icon(Icons.keyboard_arrow_right_outlined)
          ],
        ));
  }
}
