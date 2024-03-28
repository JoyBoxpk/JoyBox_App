import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';
import 'package:joybox/presentation/home_screen/models/favourite_meal_item_model.dart';
import 'package:joybox/presentation/home_screen/widgets/Menu%20widgets/menu_tab_widget.dart';
import 'package:joybox/presentation/home_screen/widgets/favourite_meal_item_widget.dart';
import 'package:joybox/presentation/home_screen/widgets/popula_res_container.dart';
import 'package:joybox/presentation/home_screen/widgets/traditional_Item_Widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_rating_bar.dart';
import 'models/traditional_restaurant_item_model.dart';

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
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                _buildAppBar(),
                SizedBox(height: 30.v),
                Text(
                  "What would you like to order",
                  style: CustomTextStyles.titleLargeMedium,
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
                    Positioned(
                      bottom: -50,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        child:
                            Image.asset("assets/images/img1_home_screen.png"),
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
                SizedBox(height: 60.v),
                SizedBox(
                  height: 9.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      spacing: 7,
                      activeDotColor: appTheme.red50001,
                      dotColor: appTheme.blueGray100,
                      dotHeight: 9.v,
                      dotWidth: 9.h,
                    ),
                  ),
                ),
                SizedBox(height: 40.v),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Popular Restaurants",
                              style: Theme.of(context).textTheme.titleLarge),
                          Text("See all",
                              style: Theme.of(context).textTheme.labelLarge),
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
                SizedBox(height: 20.v),
                SizedBox(
                  height: 9.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      spacing: 7,
                      activeDotColor: appTheme.red50001,
                      dotColor: appTheme.blueGray100,
                      dotHeight: 9.v,
                      dotWidth: 9.h,
                    ),
                  ),
                ),
                SizedBox(height: 80.v),
                _buildMenu(context),
                SizedBox(height: 50.v),
                _traditionalRestaurant(context),
                SizedBox(height: 20.v),
                SizedBox(
                  height: 9.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 3,
                    effect: ScrollingDotsEffect(
                      spacing: 7,
                      activeDotColor: appTheme.red50001,
                      dotColor: appTheme.blueGray100,
                      dotHeight: 9.v,
                      dotWidth: 9.h,
                    ),
                  ),
                ),
                SizedBox(height: 80.v),
                _buildJoyBoxChoice(context),
                SizedBox(height: 50.v),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Image.asset("assets/images/img9_home_screen.png"),
                ),
                SizedBox(height: 50.v),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your Favourite meal",
                              style: Theme.of(context).textTheme.titleLarge),
                          Text("View all",
                              style: Theme.of(context).textTheme.labelLarge),
                          SizedBox(height: 50.v),

                          // SizedBox(
                          //   height: 100.v,
                          //   child: ListView.builder(
                          //     clipBehavior: Clip.none,
                          //     scrollDirection: Axis.horizontal,
                          //     itemCount: FavouriteMealItemModel.itemsList.length,
                          //     itemBuilder: (context,index){
                          //       final item = FavouriteMealItemModel.itemsList[index];
                          //       return FavouriteMealItemWidget(item: item);
                          //     },
                          //   ),
                          // ),
                        ],
                      ),
                      SizedBox(height: 20.v),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              FavouriteMealItemWidget(
                                title1: "McDonald's",
                                title2: "DHA PHASE 8",
                                price: 599,
                                rating: 4,
                                imagePath: 'assets/images/img10_home_screen.png',
                              ),
                              SizedBox(width: 50.h),
                              FavouriteMealItemWidget(
                                title1: "KFC",
                                title2: "Gulshan Block 6",
                                price: 599,
                                rating: 3,
                                imagePath: 'assets/images/img11_home_screen.png',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildJoyBoxChoice(BuildContext context) {
    return Container(
      height: 550.v,
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            // Colors.red.withOpacity(0.02),
            Color(0xFFFFFFFF),
            Color(0xFF2099AA),
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("JoyBox Choice",
                    style: Theme.of(context).textTheme.titleLarge),
                Text("View all", style: Theme.of(context).textTheme.labelLarge),
              ],
            ),
          ),
          SizedBox(height: 40.v),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset("assets/images/img7_home_screen.png"),
                Image.asset("assets/images/img8_home_screen.png"),
              ],
            ),
          ),
          SizedBox(height: 40.v),
          SizedBox(
            height: 9.v,
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 7,
                activeDotColor: appTheme.red50001,
                dotColor: appTheme.blueGray100,
                dotHeight: 9.v,
                dotWidth: 9.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _traditionalRestaurant(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250.v,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Traditional Restaurants",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black)),
              Text("See all",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Colors.black))
            ],
          ),
          SizedBox(height: 80.v),
          Expanded(
            child: ListView.separated(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: TraditionalRestaurantsItemModel.itemsList.length,
              separatorBuilder: (context, index) {
                return SizedBox(width: 20.h);
              },
              itemBuilder: (context, index) {
                final item = TraditionalRestaurantsItemModel.itemsList[index];
                return TraditionalItemWidget(
                  traditionalItem: item,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenu(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
      width: double.infinity,
      height: 320,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFEE452E),
            Colors.red.withOpacity(0.02),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Menu",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white)),
              Text("See all",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Colors.white))
            ],
          ),
          SizedBox(height: 20.v),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MenuTabWidget(
                    tabName: 'Fast Food', tabColor: Color(0xFFFFC727)),
                MenuTabWidget(tabName: 'Pakistani Food'),
                MenuTabWidget(tabName: "Chinese"),
                MenuTabWidget(tabName: "Italian"),
                MenuTabWidget(tabName: "Thai Food"),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Image.asset("assets/images/img6_home_screen.png",
              width: 500, height: 180, fit: BoxFit.cover),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
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
                children: [
                  Text("Deliver to",
                      style: CustomTextStyles.bodyMediumRed50001),
                  Icon(Icons.arrow_drop_down, color: Colors.red),
                ],
              ),
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
    );
  }
}
