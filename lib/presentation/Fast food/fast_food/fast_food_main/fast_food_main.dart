import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:joybox/core/app_export.dart';
import 'package:joybox/presentation/Fast%20food/inner_fast_food_res_screen/inner_fastfood_res.dart';
import 'package:joybox/widgets/custom_elevated_button.dart';

import '../../../../widgets/custom_bottom_app_bar.dart';

class FastFoodMain extends StatelessWidget {
  const FastFoodMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BuildTabs(),
              BuildTabWithIcon(),
              BuildRestContainer(context),
              BuildRestContainer2(),
              BuildRestContainer(context),
              BuildRestContainer2()
            ],
          ),
        ),
      ),
      // floatingActionButton: Container(
      //   height: 100.0,
      //   width: 100.0,
      //   child: FittedBox(
      //     child: FloatingActionButton(onPressed: () {}),
      //   ),
      // ),

      //  bottomNavigationBar: CustomBottomAppBar(onChanged: (type) {
      //   // Handle bottom navigation bar item selection
      // }),
    );
  }
}

Widget BuildRestContainer(BuildContext context) {
  return Column(
    children: [
      Stack(
        alignment: Alignment.topRight, // Align the outer Stack to top right
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                child: CustomImageView(
                  fit: BoxFit.contain,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  imagePath: 'assets/images/hotel_img.png',
                ),
              ),
              // Removed Align widget from here
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 5.v,
                          ),
                          decoration: AppDecoration.fillAmber.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderLR5,
                          ),
                          child: Text(
                            "Red Apple".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment
                          .start, // Ensure text is aligned to the top left
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 5.v,
                          ),
                          decoration: AppDecoration.fillAmber.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderLR5,
                          ),
                          child: Text(
                            "20% Off ".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment
                          .start, // Ensure text is aligned to the top left
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 5.v,
                          ),
                          decoration: AppDecoration.fillAmber.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderLR5,
                          ),
                          child: Text(
                            "Welcome Gift : Free delivery".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Align(
                  alignment: Alignment.center,
                  child: CustomElevatedButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => InnerFastFoodResScreen(),)),
                      alignment: Alignment.center,
                      width: 170.v,
                      text: "Order Now"),
                ),
              ),
            ],
          ),
          // Move the Align widget here to align the image to the top right
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(34.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgMdiFavouriteBorder,
                height: 30.adaptSize,
                width: 24.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20.v,
            left: 100.h,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  padding: EdgeInsets.all(34.v),
                  child: Text(
                    "Burgers, Wraps and Rolls",
                    style: CustomTextStyles.bodyMediumWhiteA700,
                  )),
            ),
          ),

          Positioned(
            bottom: 20.v,
            right: 0.h,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.all(34.v),
                child: Container(
                  // height: 31.v,
                  // width: 69.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderLR5,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSettingsBlack900,
                    height: 21.v,
                    width: 34.h,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Red Apple - Lucky One Mall",
                style: CustomTextStyles.titleMediumSemiBold,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xFFFFD726),
                  ),
                  Text("3.9 "),
                  Text("(3000+)")
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSettingsAmber400,
                      color: Colors.red,
                      margin: EdgeInsets.only(
                        left: 18.h,
                        //top: 11.v,
                        bottom: 9.v,
                      ),
                    ),
                    Text(
                      "lbl_free_delivery".tr,
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ],
                ),
                Text("Opening 12pm - 2am")
              ],
            ),
          )
        ],
      ),
    ],
  );
}

Widget BuildRestContainer2() {
  return Column(
    children: [
      Stack(
        alignment: Alignment.topRight, // Align the outer Stack to top right
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                child: CustomImageView(
                  fit: BoxFit.contain,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  imagePath: 'assets/images/hotel_img.png',
                ),
              ),
              // Removed Align widget from here
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 5.v,
                          ),
                          decoration: AppDecoration.fillAmber.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderLR5,
                          ),
                          child: Text(
                            "Burger O’Clock".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Align(
                  alignment: Alignment.center,
                  child: CustomElevatedButton(
                      alignment: Alignment.center,
                      width: 170.v,
                      text: "Order Now"),
                ),
              ),
            ],
          ),
          // Move the Align widget here to align the image to the top right
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(34.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgMdiFavouriteBorder,
                height: 30.adaptSize,
                width: 24.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20.v,
            left: 100.h,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  padding: EdgeInsets.all(34.v),
                  child: Text(
                    "Burgers, Wraps and Rolls",
                    style: CustomTextStyles.bodyMediumWhiteA700,
                  )),
            ),
          ),

          Positioned(
            bottom: 20.v,
            right: 0.h,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.all(34.v),
                child: Container(
                  // height: 31.v,
                  // width: 69.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderLR5,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSettingsBlack900,
                    height: 21.v,
                    width: 34.h,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Red Apple - Lucky One Mall",
                style: CustomTextStyles.titleMediumSemiBold,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xFFFFD726),
                  ),
                  Text("3.9 "),
                  Text("(3000+)")
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSettingsAmber400,
                      color: Colors.red,
                      margin: EdgeInsets.only(
                        left: 18.h,
                        //top: 11.v,
                        bottom: 9.v,
                      ),
                    ),
                    Text(
                      "lbl_free_delivery".tr,
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ],
                ),
                Text("Opening 12pm - 2am")
              ],
            ),
          )
        ],
      ),
    ],
  );
}

Widget BuildTabWithIcon() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          buildIconTabItem(TabItem(text: "Sort", icon: Icons.arrow_drop_down)),
          SizedBox(width: 10), // Add space between tabs
          buildIconTabItem(TabItem(text: "Sort", icon: Icons.arrow_drop_down)),
          SizedBox(width: 10), // Add space between tabs
          buildIconTabItem(TabItem(
            text: "Rating 4.0+",
          )),
          SizedBox(width: 10), // Add space between tabs
          buildIconTabItem(
              TabItem(text: "Offers", icon: Icons.arrow_drop_down)),
          SizedBox(width: 10), // Add space between tabs
          SizedBox(width: 10), // Add space between tabs
        ],
      ),
    ),
  );
}

Widget buildIconTabItem(TabItem tabItem) {
  bool isSelected = false; // Set this to true for selected tab
  return GestureDetector(
    onTap: () {
      // Handle tab selection
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          // Set selected background color
          borderRadius: BorderRadius.circular(13),
          border: Border.all(color: Colors.blueAccent)),
      child: Row(
        children: [
          if (tabItem.text != null)
            Text(
              tabItem.text!,
              style: TextStyle(
                color: isSelected
                    ? Colors.white
                    : Colors.black, // Set text color based on selection
                fontWeight: FontWeight.bold,
              ),
            ),
          if (tabItem.text != null && tabItem.icon != null)
            SizedBox(width: 10), // Add space between text and icon
          if (tabItem.icon != null)
            Icon(
              tabItem.icon,
              color: isSelected
                  ? Colors.white
                  : Colors.black, // Set icon color based on selection
            ),
        ],
      ),
    ),
  );
}

Widget BuildTabs() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          buildTabItem("Burger"),
          SizedBox(width: 10), // Add space between tabs
          buildTabItem("Pizza"),
          SizedBox(width: 10), // Add space between tabs
          buildTabItem("Sandwich"),
          SizedBox(width: 10), // Add space between tabs
          buildTabItem("Rolls"),
          SizedBox(width: 10), // Add space between tabs
          buildTabItem("Nuggets"),
          SizedBox(width: 10), // Add space between tabs
          buildTabItem("Burger"),
        ],
      ),
    ),
  );
}

Widget buildTabItem(String text) {
  bool isSelected = false; // Set this to true for selected tab
  return GestureDetector(
    onTap: () {
      // Handle tab selection
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected
            ? Color(0xFFFFD726)
            : null, // Set selected background color
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected
              ? Colors.white
              : Colors.black, // Set text color based on selection
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

PreferredSizeWidget? CustomAppBar() {
  return AppBar(
    backgroundColor: Color(0xFFFFD726),
    elevation: 0,
    toolbarHeight: 60,
    automaticallyImplyLeading: false,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    title: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 38,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Add your navigation logic here
              },
            ),
          ),
          SizedBox(width: 20),
          Text("FastFood"),
        ],
      ),
    ),
  );
}

class TabItem {
  final String? text;
  final IconData? icon;

  TabItem({this.text, this.icon});
}
