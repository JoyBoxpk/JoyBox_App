import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';
import 'package:joybox/presentation/checkout_presentation/widgets/Payment_details_widget.dart';
import 'package:joybox/presentation/checkout_presentation/widgets/Progress_Indicator.dart';
import 'package:joybox/widgets/custom_elevated_button.dart';

import 'widgets/Delivery_widget.dart';
import 'widgets/Order_summary_widget.dart';

class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({Key? key}) : super(key: key);

  final _controller = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    bool? isSelected = false;

    return Scaffold(
      appBar: CommonAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: buildProgressIndicator()),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(height: screenHeight * 0.080),
                  // SizedBox(height: screenHeight * 0.020),
                  Delivery_widget(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      controller: _controller),
                  SizedBox(height: screenHeight * 0.050),
                  PaymentdetailsWidget(
                      screenHeight: screenHeight,
                      isSelected: isSelected,
                      screenWidth: screenWidth),
                  SizedBox(height: screenHeight * 0.050),
                  OrderSummaryWidget(screenHeight: screenHeight),
                  SizedBox(height: screenHeight * 0.016),
                  Container(
                    width: screenWidth * 0.7,
                    child: TermsAndConditionsWidget(
                      onTermsAndConditionsPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            TotalPayWidget(screenWidth: screenWidth, screenHeight: screenHeight),
            Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            //margin: EdgeInsets.all(20),
            width: screenWidth*0.70,
            height: screenHeight * 0.080,
            //decoration: BoxDecoration(color: Colors.amberAccent),
            child: CustomElevatedButton(text: "Confirm checkout")
          ),


          ],
        ),
      ),
    );
  }
}

class TotalPayWidget extends StatelessWidget {
  const TotalPayWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    //margin: EdgeInsets.all(20),
    width: screenWidth,
    height: screenHeight * 0.080,
    decoration: BoxDecoration(color: Colors.amberAccent),
    child: Center(
        child: Text(
          
      "Total Rs. 2.059",
      maxLines: 3,
      style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black),
    )),
              );
  }
}

class TermsAndConditionsWidget extends StatelessWidget {
  final Function() onTermsAndConditionsPressed;

  const TermsAndConditionsWidget({
    Key? key,
    required this.onTermsAndConditionsPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "By completing this order, I agree to all ",
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: "terms & conditions",
            style: TextStyle(
              color: Colors.red,
              //decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = onTermsAndConditionsPressed,
          ),
          TextSpan(
            text: ".",
          ),
        ],
      ),
    );
  }
}

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              "Checkout",
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
      // actions: [
      //   IconButton(
      //     icon: Icon(
      //       Icons.share,
      //       color: Color(0xFFF14530),
      //     ),
      //     onPressed: () {
      //       // Add your navigation logic here
      //     },
      //   ),
      //   IconButton(
      //     icon: Icon(
      //       Icons.search,
      //       color: Color(0xFFF14530),
      //     ),
      //     onPressed: () {
      //       // Add your navigation logic here
      //     },
      //   ),
      // ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60); // Adjust the height as needed
}
