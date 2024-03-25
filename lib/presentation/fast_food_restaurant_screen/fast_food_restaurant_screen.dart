import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:joybox/core/app_export.dart';
import 'package:joybox/widgets/custom_elevated_button.dart';

import '../Fast food/fast_food/fast_food_main/fast_food_main.dart';

class FastFoodRestaurantScreen extends StatefulWidget {
  const FastFoodRestaurantScreen({Key? key}) : super(key: key);

  @override
  State<FastFoodRestaurantScreen> createState() =>
      _FastFoodRestaurantScreenState();
}

class _FastFoodRestaurantScreenState extends State<FastFoodRestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15.v),
            Image.asset("assets/images/img1_fast_food_restaurant.png"),
            SizedBox(height: 22.v),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.h),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("0.9km away  |  Free delivery"),
                          SizedBox(height: 5.v),
                          Text("Rs.249.00 Minimum"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Opening 12pm - 2am"),
                          Text(
                            "More info",
                            style: TextStyle(color: Color(0XFFF14530)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 140.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.star_border_outlined,
                                    color: Color(0xFFF14530)),
                                Text("4.1 \t 15000+ rating"),
                              ],
                            ),
                          ),
                          SizedBox(height: 4.v),
                          SizedBox(
                            width: 140.h,
                            child: Row(
                              children: [
                                Icon(Icons.timer, color: Color(0xFFF14530)),
                                SizedBox(width: 12.h),
                                Text(
                                  "Delivery: 35 min",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "See reviews",
                        style: TextStyle(color: Color(0xFFF14530)),
                      )
                    ],
                  ),
                  SizedBox(height: 20.v),
                  BuildTabs(),
                  SizedBox(height: 20.v),
                  Text(
                    "Most ordered right now",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Stack(
                    children: [
                      Image.asset(
                          "assets/images/img2_fast_food_restaurant.png"),
                      Positioned.fill(
                        child: Center(
                          child: SizedBox(
                            height: 70.v,
                            width: 180.h,
                            child: CustomElevatedButton(
                              text: 'Rs. 699',
                              decoration: BoxDecoration(
                                color: Color(0xFFF14530),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                              "assets/images/img3_fast_food_restaurant.png"),
                          Positioned.fill(
                            child: Center(
                              child: Image.asset(
                                  "assets/images/img4_fast_food_restaurant.png"),
                            ),
                          ),
                          Positioned(
                            bottom: -16,
                            right: -30,
                            child: Image.asset(
                                "assets/images/img5_fast_food_restaurant.png"),
                          ),
                          Positioned.fill(
                            child: Center(
                              child: SizedBox(
                                height: 35.v,
                                width: 85.h,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: Color(0xFFF14530),
                                      textStyle: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  onPressed: () {},
                                  child: const Text("Rs. 799"),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 8,
                            left: 14,
                            child: Text(
                              "Deal 1",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Image.asset(
                                  "assets/images/img6_fast_food_restaurant.png"),
                              Image.asset(
                                  "assets/images/img7_fast_food_restaurant.png"),
                              Positioned(
                                bottom: -18,
                                child: Image.asset(
                                    "assets/images/img8_fast_food_restaurant.png"),
                              ),
                              Positioned(
                                top: 32,
                                left: 15,
                                child: SizedBox(
                                  height: 35.v,
                                  width: 100.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Color(0xFFF14530),
                                        textStyle: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    onPressed: () {},
                                    child: const Text("Rs. 1599"),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 8,
                                left: 14,
                                child: Text(
                                  "Deal 2",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 22.v),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Image.asset(
                                  "assets/images/img6_fast_food_restaurant.png"),
                              Image.asset(
                                  "assets/images/img7_fast_food_restaurant.png"),
                              Positioned(
                                bottom: -18,
                                child: Image.asset(
                                    "assets/images/img9_fast_food_restaurant.png"),
                              ),
                              Positioned(
                                top: 32,
                                left: 15,
                                child: SizedBox(
                                  height: 35.v,
                                  width: 100.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Color(0xFFF14530),
                                        textStyle: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    onPressed: () {},
                                    child: const Text("Rs. 1199"),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 8,
                                left: 14,
                                child: Text(
                                  "Deal 3",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 32.v),
                  Text(
                    "Super Saver Deals",
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0),
                  ),
                  SizedBox(height: 32.v),
                  Stack(clipBehavior: Clip.none, children: [
                    Row(
                      children: [
                        Image.asset(
                            "assets/images/img10_fast_food_restaurant.png"),
                        Container(
                          alignment: Alignment.center,
                          height: 145,
                          width: 220,
                          decoration: BoxDecoration(
                              color: Color(0XFFFFD726),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Super Saver Deal 1",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.0),
                              ),
                              // SizedBox(height: 10.v),
                              Text(
                                "Any One Wrap from creamy,\nfiery, and smokey with 1 drink",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0),
                              ),
                              // SizedBox(height: 10.v),
                              SizedBox(
                                width: 100.0,
                                height: 30.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14.0)),
                                      foregroundColor: Colors.white,
                                      backgroundColor: Color(0xFFF14530),
                                      textStyle: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  onPressed: () {},
                                  child: const Text("Rs. 559"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: -20,
                      left: 125,
                      child: Container(
                        alignment: Alignment.center,
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF14530),
                        ),
                        child: Text(
                          "18% OFF",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(height: 40.v),
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                          "assets/images/img12_fast_food_restaurant.png")),
                  SizedBox(height: 10.v),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 240,
              color: Color(0XFFF14530),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SizedBox(height: 25.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "What our foodies say",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "See all",
                        style: TextStyle(
                            color: Color(0xFFFFD726),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                          "assets/images/img13_fast_food_restaurant.png"),
                      Stack(
                        children: [
                          Image.asset(
                              "assets/images/img14_fast_food_restaurant.png"),
                          Positioned(
                              top: 10,
                              right: 10,
                              child: Image.asset(
                                  "assets/images/img16_fast_food_restaurant.png")),
                        ],
                      ),
                      Image.asset(
                          "assets/images/img15_fast_food_restaurant.png"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.v),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cricket Craze Deals",
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 30.v),
                  Stack(clipBehavior: Clip.none, children: [
                    Row(
                      children: [
                        Image.asset(
                            "assets/images/img17_fast_food_restaurant.png"),
                        Container(
                          alignment: Alignment.center,
                          height: 145,
                          width: 220,
                          decoration: BoxDecoration(
                              color: Color(0XFFFFD726),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Cricket Craze Deal 1",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.0),
                              ),
                              // SizedBox(height: 10.v),
                              Text(
                                "1 Firebird burgery with\n1 soft drink",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0),
                              ),
                              // SizedBox(height: 10.v),
                              SizedBox(
                                width: 100.0,
                                height: 30.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(14.0)),
                                      foregroundColor: Colors.white,
                                      backgroundColor: Color(0xFFF14530),
                                      textStyle: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  onPressed: () {},
                                  child: const Text("Rs. 699"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: -20,
                      left: 125,
                      child: Container(
                        alignment: Alignment.center,
                        width: 58,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFF14530),
                        ),
                        child: Text(
                          "25% OFF",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(height: 30.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sliders Party in the Box",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                          ),
                          SizedBox(height: 10.v),
                          Text(
                            "Chicken Sliders",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14.0),
                          ),
                          SizedBox(height: 8.v),
                          Text(
                              "Any 4 chicken sliders with 1\ngourmet fries from mayo garlic or\nwild fries and 2 soft drinks"),
                          SizedBox(height: 25.v),
                          Text(
                            "Rs. 1599.00",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                              "assets/images/img18_fast_food_restaurant.png"),
                          Positioned(
                              top: -18,
                              right: -2,
                              child: Image.asset(
                                  "assets/images/img19_fast_food_restaurant.png")),
                          Positioned(
                              bottom: 5,
                              right: 2,
                              child: Image.asset(
                                  "assets/images/img20_fast_food_restaurant.png")),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.v),
                  Divider(
                    color: Color(0xFFFFD726),
                    thickness: 1.2,
                  ),
                  SizedBox(height: 35.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sliders Party in the Box",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                          ),
                          SizedBox(height: 10.v),
                          Text(
                            "Chicken Sliders",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14.0),
                          ),
                          SizedBox(height: 8.v),
                          Text(
                              "Any 4 chicken sliders with 1\ngourmet fries from mayo garlic or\nwild fries and 2 soft drinks"),
                          SizedBox(height: 25.v),
                          Text(
                            "Rs. 1599.00",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                              "assets/images/img18_fast_food_restaurant.png"),
                          Positioned(
                              top: -18,
                              right: -2,
                              child: Image.asset(
                                  "assets/images/img19_fast_food_restaurant.png")),
                          Positioned(
                            bottom: 5,
                            right: 2,
                            child: Image.asset(
                                "assets/images/img20_fast_food_restaurant.png"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.v),
                  Divider(
                    color: Color(0xFFFFD726),
                    thickness: 1.2,
                  ),
                  SizedBox(height: 35.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sliders Party in the Box",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                          ),
                          SizedBox(height: 10.v),
                          Text(
                            "Chicken Sliders",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14.0),
                          ),
                          SizedBox(height: 8.v),
                          Text(
                              "Any 4 chicken sliders with 1\ngourmet fries from mayo garlic or\nwild fries and 2 soft drinks"),
                          SizedBox(height: 25.v),
                          Text(
                            "Rs. 1599.00",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14.0),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                              "assets/images/img18_fast_food_restaurant.png"),
                          Positioned(
                              top: -18,
                              right: -2,
                              child: Image.asset(
                                  "assets/images/img19_fast_food_restaurant.png")),
                          Positioned(
                              bottom: 5,
                              right: 2,
                              child: Image.asset(
                                  "assets/images/img20_fast_food_restaurant.png")),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10.v),
                ],
              ),
            ),
            Image.asset("assets/images/img21_fast_food_restaurant.png"),
          ],
        ),
      ),
    );
  }
}

PreferredSizeWidget? CustomAppBar() {
  return AppBar(
    backgroundColor: Color((0xFFFFD726)),
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
            height: 38.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                // Add your navigation logic here
              },
            ),
          ),
          SizedBox(width: 20),
          Text(
            "Restaurant",
            style: TextStyle(fontSize: 20.0),
          )
        ],
      ),
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.share,
          color: Color(0xFFF14530),
        ),
        onPressed: () {
          // Add your navigation logic here
        },
      ),
      IconButton(
        icon: Icon(
          Icons.search,
          color: Color(0xFFF14530),
        ),
        onPressed: () {
          // Add your navigation logic here
        },
      ),
    ],
  );
}

Widget BuildTabs() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: buildTabItem("Popular")),
        SizedBox(width: 10), // Add space between tabs
        buildTabItem("Pizza"),
        SizedBox(width: 10), // Add space between tabs
        buildTabItem("Wings"),
        SizedBox(width: 10), // Add space between tabs
        buildTabItem("Rolls"),
        SizedBox(width: 10), // Add space between tabs
        buildTabItem("Sandwich"),
        SizedBox(width: 10), // Add space between tabs
        buildTabItem("Nuggets"),
      ],
    ),
  );
}
