import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:joybox/presentation/get_started_one_screen/get_started_screen.dart';
import 'package:joybox/presentation/home_screen/home_screen.dart';
import 'package:joybox/presentation/login_screen/login_screen.dart';
import 'package:joybox/presentation/signup_screen/signup_screen.dart';
import 'package:joybox/presentation/splash_screen/splash_screen.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init()
  ]).then((value) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final GoRouter _router = GoRouter(
    //   debugLogDiagnostics: true,
    //   initialLocation: HomeScreen.routeName,
    //   routes: [
    //     // GoRoute(
    //     //   path: SplashScreen.routeName,
    //     //   name: SplashScreen.routeName,
    //     //   builder: (context, state) => SplashScreen(),
    //     // ),
    //     // GoRoute(
    //     //     path: LoginScreen.routeName,
    //     //     name: LoginScreen.routeName,
    //     //     builder: (context,state) => LoginScreen(),
    //     // ),
    //     // GoRoute(
    //     //   path: SignUpScreen.routeName,
    //     //   name: SignUpScreen.routeName,
    //     //   builder: (context,state) => SignUpScreen(),
    //     // ),
    //     // GoRoute(
    //     //   path: GetStartedScreen.routeName,
    //     //   name: GetStartedScreen.routeName,
    //     //   builder: (context,state) => GetStartedScreen(),
    //     // ),
    //     GoRoute(
    //       path: HomeScreen.routeName,
    //       name: HomeScreen.routeName,
    //       builder: (context,state) => HomeScreen(),
    //     ),
    //   ],
    // );

    return Sizer(
      builder: (context, orientation, deviceType) {
        return ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
          child: Consumer<ThemeProvider>(
            builder: (context, provider, child) {
              return MaterialApp(
                home: HomeScreen(),
                // routerConfig: _router,
                theme: theme,
                title: 'joybox',
                // navigatorKey: NavigatorService.navigatorKey,
                debugShowCheckedModeBanner: false,
                localizationsDelegates: [
                  AppLocalizationDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: [
                  Locale(
                    'en',
                    '',
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
