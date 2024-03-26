import 'package:flutter/cupertino.dart';

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
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(milliseconds: 3000), () {
  //     NavigatorService.popAndPushNamed(
  //       AppRoutes.getStartedOneScreen,
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
                Image.asset("assets/images/img1_splash_screen.png", fit: BoxFit.contain,),
                Positioned(
                    bottom: 05,
                    child: Image.asset("assets/images/img2_splash_screen.png", fit: BoxFit.cover)),
            ],
          ),
        ),
      ),
    );
  }
}
