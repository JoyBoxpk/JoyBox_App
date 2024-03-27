import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:joybox/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../theme/theme_helper.dart';
import '../home_screen/home_screen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  static const String routeName = '/get-started';

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                left: -110,
                top: -40,
                child: Container(
                  width: 510,
                  height: 510,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF2099AA),
                  ),
                ),
              ),
              Positioned(
                right: -140,
                child: Image.asset(
                  "assets/images/img2_get_started_screen.png",
                  width: 400,
                  height: 690,
                ),
              ),
              Positioned(
                left: -98,
                bottom: -10,
                child: Image.asset(
                  "assets/images/img4_get_started_screen.png",
                  width: 500,
                  height: 400,
                ),
              ),
              Positioned(
                left: -96,
                bottom: 20,
                child: Image.asset(
                  "assets/images/img3_get_started_screen.png",
                  width: 480,
                  height: 380,
                ),
              ),
              Positioned(
                right: 50,
                bottom: 50,
                child: InkWell(
                  onTap: () => context.goNamed(HomeScreen.routeName),
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    alignment: Alignment.center,
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Color(0xFFEE452E), shape: BoxShape.circle),
                    child: Image.asset("assets/images/img5_get_started_screen.png", width: 50, fit: BoxFit.cover,),
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to",
                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                    ),
                    Text(
                      "JoyBox!",
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 60.0,
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 40,
                top: 380,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "We're so glad you're here",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
      
                  ],
                ),
              ),
              Positioned(
                bottom: 100,
                left: 150,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 6,
                    activeDotColor: Color(0xFF2099AA),
                    dotColor: appTheme.blueGray100,
                    activeDotScale: 1.3,
                    dotHeight: 10.v,
                    dotWidth: 10.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
