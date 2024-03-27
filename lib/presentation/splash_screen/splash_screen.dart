import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:joybox/core/app_export.dart';
import 'package:joybox/presentation/get_started_one_screen/get_started_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      context.goNamed(GetStartedScreen.routeName);
    });
  }

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
                    bottom: 06,
                    child: Image.asset("assets/images/img2_splash_screen.png", fit: BoxFit.cover)),
            ],
          ),
        ),
      ),
    );
  }
}
