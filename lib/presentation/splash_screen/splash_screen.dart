import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';
import 'provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplashProvider(), child: SplashScreen());
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.getStartedOneScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup37141,
                      height: 617.v,
                      width: 393.h,
                      alignment: Alignment.topCenter),
                  CustomImageView(
                      imagePath: ImageConstant.imgVector622,
                      height: 646.v,
                      width: 393.h,
                      alignment: Alignment.bottomCenter),
                  CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 424.v,
                      width: 393.h,
                      alignment: Alignment.bottomCenter),
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse2665,
                      height: 208.v,
                      width: 204.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 70.v))
                ]))));
  }
}
