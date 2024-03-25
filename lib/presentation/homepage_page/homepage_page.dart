import 'package:flutter/widgets.dart';
import 'package:joybox/presentation/Fast%20food/fast_food/fast_food_main/fast_food_main.dart';
import 'package:joybox/presentation/Fast%20food/inner_fast_food_res_screen/inner_fastfood_res.dart';
import 'package:joybox/presentation/homepage_page/widgets/divider_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:joybox/presentation/homepage_page/widgets/joybox_choice_item_widget.dart';
import '../fast_food_restaurant_screen/fast_food_restaurant_screen.dart';
import 'widgets/Appbar_home_widget.dart';
import 'widgets/Menu widgets/menu_tab_widget.dart';
import 'widgets/popula_res_container.dart';
import 'widgets/thirtynine_item_widget.dart';
import 'models/thirtynine_item_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widgets/traditional_Item_Widget.dart';
import 'models/traditional_item_model.dart';
import 'models/menu_item_model.dart';
import 'widgets/offer_item_widget.dart';
import 'models/OfferItemModel.dart';
import 'widgets/fortytwo_item_widget.dart';
import 'models/fortytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';
import 'provider/homepage_provider.dart';

// ignore_for_file: must_be_immutable
class HomepagePage extends StatefulWidget {
  const HomepagePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomepagePageState createState() => HomepagePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomepageProvider(),
      child: HomepagePage(),
    );
  }
}

class HomepagePageState extends State<HomepagePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: 430.h,
          padding: EdgeInsets.all(8),
          decoration: AppDecoration.fillWhiteA,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 63.v),
              child: Column(
                children: [
                  buildUperWidget(context),
                  SizedBox(height: 29.v),
                  SizedBox(
                    height: 1.v,
                    width: 81.h,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 81.h,
                            child: Divider(
                              color: appTheme.gray40001,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 61.h,
                            child: Divider(
                              color: appTheme.red50001,
                              indent: 1.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 33.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 27.h),
                    child: DividerWidget(
                      context,
                      menu: "msg_popular_restaurants".tr,
                      seeAll: "lbl_see_all".tr,
                    ),
                  ),
                  SizedBox(height: 26.v),
                  _buildrestaurantsWidget(context),
                  //SizedBox(height: 5.v),
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Padding(
                  //     padding: EdgeInsets.only(
                  //       left: 28.h,
                  //       right: 88.h,
                  //     ),
                  //     child: Row(
                  //       children: [
                  //         Text(
                  //           "msg_opening_11pm_12am".tr,
                  //           style: CustomTextStyles.labelMediumBlack900,
                  //         ),
                  //         Padding(
                  //           padding: EdgeInsets.only(left: 80.h),
                  //           child: Text(
                  //             "msg_opening_11pm_12am".tr,
                  //             style: CustomTextStyles.labelMediumBlack900,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),

                  // SizedBox(height: 21.v),
                  SizedBox(
                    width: 86.h,
                    child: Divider(),
                  ),

                  SizedBox(height: 27.v),
                  _buildMenuWidget(context),
                  SizedBox(height: 43.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 27.h),
                    child: DividerWidget(
                      context,
                      menu: "msg_traditional_restaurants".tr,
                      seeAll: "lbl_see_all".tr,
                    ),
                  ),
                  SizedBox(height: 31.v),
                  traditional_restaurants(context),
                  SizedBox(height: 44.v),
                  SizedBox(
                    width: 86.h,
                    child: Divider(),
                  ),
                  
                  // SizedBox(height: 41.v),
                  BuildChoiceImages(context),
                  SizedBox(height: 42.v),
                  _BuildOfferItem(context),
                  SizedBox(height: 24.v),
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
                //   SizedBox(height: 39.v),
                //  // _buildFortySeven(context),
                //  _buildSeventyFive(context),
                  SizedBox(height: 25.v),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Your Favourite meal",style: TextStyle(fontSize: 18.h,fontWeight: FontWeight.bold),),
                        Text("View All"), 
                    
                      ],
                    ),
                  ),
                  _buildFortyTwo(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  
  /// Section Widget
  Widget _buildrestaurantsWidget(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(
          left: 28.h,
          right: 21.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            populaResContainer(
              title: 'msg_lebanese_restaurant',
            ),
            populaResContainer(
              title: 'msg_movepick_restaurant',
            ),
            populaResContainer(
              title: 'msg_lebanese_restaurant',
            ),
            populaResContainer(
              title: 'msg_movepick_restaurant',
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuImages(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.h,
          right: 0.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Consumer<HomepageProvider>(
              builder: (context, provider, child) {
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 156.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      provider.sliderIndex = index;
                    },
                  ),
                  itemCount:
                      provider.homepageModelObj.thirtynineItemList.length,
                  itemBuilder: (context, index, realIndex) {
                    ThirtynineItemModel model =
                        provider.homepageModelObj.thirtynineItemList[index];
                    return ThirtynineItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
            SizedBox(height: 32.v),
            Consumer<HomepageProvider>(
              builder: (context, provider, child) {
                return SizedBox(
                  height: 9.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: provider.sliderIndex,
                    count: 3,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 7,
                      activeDotColor: appTheme.red50001,
                      dotColor: appTheme.blueGray100,
                      dotHeight: 9.v,
                      dotWidth: 9.h,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuWidget(BuildContext context) {
    return SizedBox(
      height: 304.v,
      width: 430.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 254.v,
              width: 430.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.gray4003f,
                    appTheme.whiteA700.withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(27.h, 23.v, 27.h, 255.v),
            child: DividerWidget(
              context,
              menu: "lbl_menu".tr,
              seeAll: "lbl_see_all".tr,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                left: 28.h,
                top: 64.v,
                bottom: 200.v,
              ),
              child: IntrinsicWidth(
                child: SizedBox(
                  height: 40.v,
                  width: 402.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 40.v,
                          width: 70.h,
                          decoration: BoxDecoration(
                            color: appTheme.red50001,
                            borderRadius: BorderRadius.circular(
                              5.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 9.v,
                            bottom: 12.v,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FastFoodRestaurantScreen(),)),
                                child: Text(
                                  "lbl_fast_food".tr,
                                  style: CustomTextStyles.titleSmallGray100,
                                ),
                              ),
                              menutabwidget(tabname: 'Pakistani Food'),
                              menutabwidget(tabname: 'Chinese'),
                              menutabwidget(tabname: 'Italian'),
                              menutabwidget(tabname: 'Thai Food'),
                              menutabwidget(tabname: 'Turkish'),
                              menutabwidget(tabname: 'Afghani'),
                              
                              
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          _buildMenuImages(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget traditional_restaurants(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 132.v,
        child: Consumer<HomepageProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 28.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 19.h,
                );
              },
              itemCount: provider.homepageModelObj.tradtionalRestaurantsItemList.length,
              itemBuilder: (context, index) {
                TradtionalRestaurantsItemModel model =
                    provider.homepageModelObj.tradtionalRestaurantsItemList[index];
                return traditional_Item_Widget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget BuildChoiceImages(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 28.h,
          top: 22.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                right: 40.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_joybox_choice".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "lbl_view_all".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 38.v),
            Consumer<HomepageProvider>(
              builder: (context, provider, child) {
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 278.v,
                    initialPage: 0,
                    //autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      provider.sliderIndex1 = index;
                    },
                  ),
                  itemCount: provider.homepageModelObj.JoyBoxChoiceItem.length,
                  itemBuilder: (context, index, realIndex) {
                    MenuItemModel model =
                        provider.homepageModelObj.JoyBoxChoiceItem[index];
                    return JoyBoxChoiceItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
            SizedBox(height: 35.v),
            Consumer<HomepageProvider>(
              builder: (context, provider, child) {
                return Container(
                  height: 9.v,
                  margin: EdgeInsets.only(left: 167.h),
                  child: AnimatedSmoothIndicator(
                    activeIndex: provider.sliderIndex1,
                    count: provider.homepageModelObj.JoyBoxChoiceItem.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 7,
                      activeDotColor: appTheme.red50001,
                      dotColor: appTheme.whiteA700,
                      dotHeight: 9.v,
                      dotWidth: 9.h,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 30.h,),
             CustomImageView(
            imagePath: ImageConstant.imgVectorAmber40051x430,
            height: 51.v,
            width: 430.h,
            alignment: Alignment.bottomCenter,
          ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyFive(BuildContext context) {
    return SizedBox(
      height: 481.v,
      width: 430.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector706,
            height: 476.v,
            width: 429.h,
            alignment: Alignment.center,
          ),
          // CustomImageView(
          //   imagePath: ImageConstant.imgVectorAmber40051x430,
          //   height: 51.v,
          //   width: 430.h,
          //   alignment: Alignment.bottomCenter,
          // ),
          JoyBoxChoiceItemWidget(MenuItemModel()),
        ],
      ),
    );
  }

  // /// Section Widget
  Widget _BuildOfferItem(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 210.v,
        width: 402.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "lbl_offers".tr,
                style: theme.textTheme.titleLarge,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  right: 28.h,
                ),
                child: Positioned(
                  bottom: 28.h,
                  child: Text(
                    "lbl_view_all".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
            ),
            Consumer<HomepageProvider>(
              builder: (context, provider, child) {
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 200.v,
                    initialPage: 0,
                    //autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      provider.sliderIndex2 = index;
                    },
                  ),
                  itemCount: provider.homepageModelObj.fortyItemList.length,
                  itemBuilder: (context, index, realIndex) {
                    print(
                        provider.homepageModelObj.fortyItemList[index].toString());
                    OfferItemModel model =
                        provider.homepageModelObj.fortyItemList[index];
                    return BuildOfferWidgetItems(
                      model,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  } 
  
  // /// Section Widget
  Widget _buildFortyTwo(BuildContext context) {
    return SizedBox(
      height: 300.v,
      child: Consumer<HomepageProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 1.h,
              );
            },
            itemCount: provider.homepageModelObj.fortytwoItemList.length,
            itemBuilder: (context, index) {
              FortytwoItemModel model =
                  provider.homepageModelObj.fortytwoItemList[index];
              return FortytwoItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Common widget
  
}

