import 'package:flutter/material.dart';
import 'package:joybox/presentation/homepage_page/homepage_page.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/get_started_one_screen/get_started_one_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/signup_screen/signup_screen.dart';
import '../presentation/homepage_container_screen/homepage_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String getStartedOneScreen = '/get_started_one_screen';

  static const String loginScreen = '/loginScreen';

  static const String signupscreen = '/signupscreen';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String homepagePage = '/homepage_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        getStartedOneScreen: GetStartedOneScreen.builder,
        loginScreen: LoginScreen.builder,
        signupscreen: SignupScreen.builder,
        homepageContainerScreen: HomepageContainerScreen.builder,
        homepagePage:HomepagePage.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomepagePage.builder
      };
}
