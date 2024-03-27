import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:joybox/core/app_export.dart';
import 'package:joybox/presentation/home_screen/provider/homepage_provider.dart';
import 'package:joybox/presentation/home_screen/widgets/popula_res_container.dart';

import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "/home-screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.outlineBlack,
                        child: CustomImageView(
                          fit: BoxFit.contain,
                          imagePath: ImageConstant.imgTelevision,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Deliver to",
                                style: CustomTextStyles.bodyMediumRed50001,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgArrowDown,
                                height: 8.v,
                                width: 6.h,
                                margin: EdgeInsets.only(
                                  left: 7.h,
                                  top: 9.v,
                                  bottom: 5.v,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "4102 Pretty View Lane",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup18125,
                        height: 38.adaptSize,
                        width: 38.adaptSize,
                        margin: EdgeInsets.only(top: 3.v),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.v),
                  Text(
                    "What would you like to order",
                    style: CustomTextStyles.titleLargeMedium,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.v),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200.v,
                  width: double.infinity,
                  color: Color(0xFFF5F5F5),
                ),
                Positioned(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 65.v,
                            child: Material(
                              borderRadius: BorderRadius.circular(12.0),
                              elevation: 5.0,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Find what you need . . .",
                                  prefixIcon: Icon(Icons.search),
                                  suffixIcon: Icon(Icons.history_toggle_off),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5.h),
                        CustomIconButton(
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.outlineBlackTL10,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgClose,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        CustomIconButton(
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.outlineBlackTL10,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgStreamlineVoiceMail,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        CustomIconButton(
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          padding: EdgeInsets.all(4.h),
                          decoration: IconButtonStyleHelper.outlineBlackTL10,
                          child: CustomImageView(
                            imagePath:
                                'assets/images/translate-black-lineal-16029.png',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -50,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Image.asset("assets/images/img1_home_screen.png"),
                  ),
                ),
                // Stack(
                //   children: [
                //     Container(
                //       height: 105.v,
                //       width: 70.h,
                //       decoration: BoxDecoration(
                //           color: Colors.red,
                //           borderRadius: BorderRadius.circular(8.0)
                //       ),
                //     ),
                //     Image.asset(),
                //   ],
                // ),
                // ListView.builder(
                //   itemCount: 5,
                //   itemBuilder: (context,index){
                //     return
                //   },
                // ),
              ],
            ),
            SizedBox(height: 80.v),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular Restaurants", style: Theme.of(context).textTheme.titleLarge),
                      Text("See all", style: Theme.of(context).textTheme.labelLarge),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      populaResContainer(title: "Lachine"),
                      populaResContainer(title: "Movenpick"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
