import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'models/get_started_one_model.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';
import 'provider/get_started_one_provider.dart';

class GetStartedOneScreen extends StatefulWidget {
  const GetStartedOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  GetStartedOneScreenState createState() => GetStartedOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GetStartedOneProvider(),
      child: GetStartedOneScreen(),
    );
  }
}

class GetStartedOneScreenState extends State<GetStartedOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: SizeUtils.height,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            height: 524.v,
                            width: 380.h,
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse2668,
                                  height: 524.v,
                                  width: 380.h,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 28.h,
                                      top: 186.v,
                                    ),
                                    child: Text(
                                      "lbl_welcome_to".tr,
                                      style: theme.textTheme.headlineLarge,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse2671,
                          height: 477.v,
                          width: 380.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(bottom: 41.v),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: SizedBox(
                            height: 476.v,
                            width: 317.h,
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse2672,
                                  height: 476.v,
                                  width: 317.h,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 28.h,
                                      top: 50.v,
                                      right: 74.h,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "msg_we_re_so_glad_you_re".tr,
                                          style:
                                              CustomTextStyles.titleMediumMont,
                                        ),
                                        SizedBox(height: 271.v),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            height: 13.v,
                                            margin:
                                                EdgeInsets.only(right: 40.h),
                                            child: AnimatedSmoothIndicator(
                                              activeIndex: 0,
                                              count: 3,
                                              effect: ScrollingDotsEffect(
                                                spacing: 6,
                                                activeDotColor:
                                                    appTheme.amberA200,
                                                dotColor: appTheme.blueGray100,
                                                activeDotScale: 1.3,
                                                dotHeight: 10.v,
                                                dotWidth: 10.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Align(
                        //   alignment: Alignment.bottomRight,
                        //   child: Container(
                        //     height: 117.v,
                        //     width: 97.h,
                        //     margin: EdgeInsets.only(bottom: 64.v),
                        //     child: Stack(
                        //       alignment: Alignment.centerRight,
                        //       children: [
                        //         CustomImageView(
                        //           imagePath: ImageConstant.imgEllipse2669,
                        //           height: 117.v,
                        //           width: 97.h,
                        //           alignment: Alignment.center,
                        //         ),
                        //         CustomImageView(
                        //           imagePath: ImageConstant.imgArrowLeft,
                        //           height: 32.v,
                        //           width: 47.h,
                        //           alignment: Alignment.centerRight,
                        //           margin: EdgeInsets.only(right: 18.h),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
            
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 26.h,
                              top: 216.v,
                            ),
                            child: Text(
                              "lbl_joybox".tr,
                              style: CustomTextStyles.montserratBlack900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVector623,
                height: 871.v,
                width: 147.h,
                alignment: Alignment.centerRight,
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, AppRoutes.signupscreen),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 100.v,
                    width: 66.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60)
                    ),
                    margin: EdgeInsets.only(bottom: 52.v),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse2669,
                          height: 100.v,
                          width: 70.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 32.v,
                          width: 47.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 10.h),
                        ),
                      ],
                    ),
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
