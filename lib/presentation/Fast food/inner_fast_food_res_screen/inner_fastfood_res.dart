import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';
import 'package:joybox/widgets/custom_checkbox_button.dart';

class InnerFastFoodResScreen extends StatelessWidget {
  const InnerFastFoodResScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              CustomImageView(
                imagePath: "assets/images/Mask group.png",
                height: 240.v,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sliders Party in the Box',
                              style: CustomTextStyles.bodyMediumBold,
                            ),
                            Text("RS. 1599.00",
                                style: CustomTextStyles.bodyMediumBold)
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                            'Any 4 chicken sliders with 1 gourmet fries from mayo garlic or wild fries and 2 soft drinks')
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    PurchuseDetails(
                      itemTxt: "Choose your 1st Chicken Slider",
                      iscompeleted: false,
                      state: 'Required',
                    ),
                    SizedBox(
                      height: 20.v,
                    ),
                    PurchuseDetails(
                      itemTxt: "Choose your 2nd Chicken Slider",
                      iscompeleted: false,
                      state: "Required",
                    ),
                    SizedBox(
                      height: 20.v,
                    ),
                    PurchuseDetails(
                      itemTxt: "Choose your 3rd Chicken Slider",
                      iscompeleted: false,
                      state: "Required",
                    ),
                    SizedBox(
                      height: 20.v,
                    ),
                    PurchuseDetails(
                      itemTxt: "Choose your Gourmet Fries",
                      iscompeleted: true,
                      state: "Completed",
                    ),
                    SizedBox(
                      height: 20.v,
                    ),
                    Frequently_bought()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PurchuseDetails extends StatelessWidget {
  const PurchuseDetails(
      {required this.itemTxt,
      required this.state,
      required this.iscompeleted,
      Key? key})
      : super(key: key);

  final String itemTxt;
  final String state;
  final bool iscompeleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      height: 330.v,
      decoration: BoxDecoration(
        color: iscompeleted ? appTheme.red500 : appTheme.amber400,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(itemTxt,
                      style: TextStyle(
                          color: iscompeleted ? Colors.white : Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold)),
                  Text(
                    iscompeleted ? "Done" : 'Select one',
                    style: iscompeleted
                        ? CustomTextStyles.labelLargeAmberA200
                        : CustomTextStyles.labelLargeRed50001,
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(13.0),
                decoration: BoxDecoration(
                    color: iscompeleted ? Colors.white : Colors.redAccent,
                    borderRadius: BorderRadius.circular(13)),
                child: Text(
                  state,
                  style: iscompeleted
                      ? CustomTextStyles.bodyMediumInter
                      : CustomTextStyles.bodyMediumWhiteA700,
                ),
              )
            ],
          ),
          PurchuseDetailsSection(
            text: "Chick n Crisp Slider",
            isCompleted: iscompeleted,
          ),
          PurchuseDetailsSection(
            text: "Fire Bird Slider",
            isCompleted: iscompeleted,
          ),
          PurchuseDetailsSection(
            text: "Chick n Crisp jalapeno spark slider",
            isCompleted: iscompeleted,
          ),
          PurchuseDetailsSection(
            text: "Chick n Crisp Smokey tang Slider",
            isCompleted: iscompeleted,
          )
        ],
      ),
    );
  }
}

class PurchuseDetailsSection extends StatelessWidget {
  const PurchuseDetailsSection({
    required this.isCompleted,
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomCheckboxButton(
                onChange: (p0) => (""),
              ),
              Text(
                text,
                style: isCompleted
                    ? CustomTextStyles.bodyMediumWhiteA700
                    : CustomTextStyles.bodyMedium14,
                maxLines: 2,
              )
            ],
          ),
          Text("Free",
              style: isCompleted
                  ? CustomTextStyles.bodyMediumWhiteA700
                  : CustomTextStyles.bodyMedium14)
        ],
      ),
    );
  }
}

PreferredSizeWidget? CustomAppBar() {
  return AppBar(
    backgroundColor: Color((0xFFF14530)),
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
                color: Colors.red,
              ),
              onPressed: () {
                // Add your navigation logic here
              },
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.share,
          color: Colors.white,
        ),
        onPressed: () {
          // Add your navigation logic here
        },
      ),
      IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        onPressed: () {
          // Add your navigation logic here
        },
      ),
    ],
  );
}

class Frequently_bought extends StatelessWidget {
  const Frequently_bought({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9),
      margin: EdgeInsets.all(9),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Frequently bought together",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
              Material(
                elevation: 10, // Set elevation value as needed
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Text(
                    "Optional",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          FrequentRowSection(
            title: 'Fries',
            price: "199.00",
            imagpath: "assets/images/French fries.png",
          ),
          FrequentRowSection(
            title: 'Fries',
            price: "199.00",
            imagpath:
                "assets/images/Grilled cheeseburger on sesame bun with fresh toppings generative ai.png",
          ),
          FrequentRowSection(
            title: 'Fries',
            price: "199.00",
            imagpath: "assets/images/xxxxxd 1.png",
          ),
          SizedBox(
            height: 20.v,
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_drop_down,
                color: Colors.red,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "View 7 more",
                style: TextStyle(color: Colors.red),
              ),
              
            ],
          ),
          SizedBox(
                  height: 20.v,
                ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Special instructions",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 20.v,
                ),
                Text(
                  "Please let us know if you are allergic to anything or if we need to avoid anything",
                  maxLines: 2,
                ),
                SizedBox(
                  height: 20.v,
                ),
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                      fillColor: Color(0XFFF7F7F7),
                      filled: true,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "e.g no mayo"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FrequentRowSection extends StatelessWidget {
  const FrequentRowSection(
      {Key? key,
      required this.price,
      required this.title,
      required this.imagpath})
      : super(key: key);

  final String price, title, imagpath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomCheckboxButton(
              onChange: (p0) => (""),
            ),
            CustomImageView(
              imagePath: imagpath,
              fit: BoxFit.cover,
              width: 80.h,
            ),
            SizedBox(
              width: 10,
            ),
            Text(title)
          ],
        ),
        Text(price)
      ],
    );
  }
}
