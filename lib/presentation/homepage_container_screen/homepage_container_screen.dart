import 'package:joybox/presentation/homepage_page/homepage_page.dart';
import 'package:joybox/widgets/custom_bottom_app_bar.dart';
import 'package:joybox/widgets/custom_floating_button.dart';
import 'models/homepage_container_model.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';
import 'provider/homepage_container_provider.dart';

class HomepageContainerScreen extends StatefulWidget {
  const HomepageContainerScreen({Key? key}) : super(key: key);

  @override
  HomepageContainerScreenState createState() => HomepageContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomepageContainerProvider(),
        child: HomepageContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class HomepageContainerScreenState extends State<HomepageContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 430.h,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  Navigator(
                      key: navigatorKey,
                      initialRoute: AppRoutes.homepagePage,
                      onGenerateRoute: (routeSetting) => PageRouteBuilder(
                          pageBuilder: (ctx, ani, ani1) =>
                              getCurrentPage(context, routeSetting.name!),
                          transitionDuration: Duration(seconds: 0))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildThirtyFive(context),
            floatingActionButton: CustomFloatingButton(
                height: 74,
                width: 74,
                backgroundColor: appTheme.amber400,
                child: CustomImageView(
                    imagePath: ImageConstant.imgFrameBlack900,
                    height: 37.0.v,
                    width: 37.0.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildThirtyFive(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Frame:
        return "/";
      case BottomBarEnum.Framewhitea700:
        return "/";
      case BottomBarEnum.Search:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
