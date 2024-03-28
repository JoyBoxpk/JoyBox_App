import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:joybox/core/app_export.dart';
import 'package:joybox/presentation/checkout_presentation/widgets/Payment_details_widget.dart';
import 'package:joybox/presentation/checkout_presentation/widgets/Progress_Indicator.dart';
import 'package:joybox/widgets/custom_elevated_button.dart';

import 'widgets/Delivery_widget.dart';
import 'widgets/Order_summary_widget.dart';

class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({Key? key}) : super(key: key);


  static const String routeName = "checkout-scren";

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
                  OrderSummaryWidget(
                    Delivery_cintainercolor: Color(0XFFFFD726),
                    screenHeight: screenHeight,
                    bgcolor: Colors.white,
                    elevation: 10.0,
                  ),
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
            TotalPayWidget(
                screenWidth: screenWidth, screenHeight: screenHeight),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              //margin: EdgeInsets.all(20),
              width: screenWidth * 0.70,
              height: screenHeight * 0.080,
              //decoration: BoxDecoration(color: Colors.amberAccent),
              child: CustomElevatedButton(
                onPressed: () =>
                    showCustomDialogue(context), // Pass the context
                text: 'Confirm Checkout',
              ),
            ),
          ],
        ),
      ),
    
    );
    
  }
}

void showCustomDialogue(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AnimatedBuilder(
        animation: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: ModalRoute.of(context)!.animation!,
            curve: Curves.bounceInOut,
          ),
        ),
        builder: (context, child) {
          return Opacity(
            opacity: ModalRoute.of(context)!.animation!.value,
            child: Dialog(
              backgroundColor: Colors.transparent,
              insetPadding: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                color: Color(0XFFFFD726),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomImageView(
                                width: 13,
                                height: 10,
                                fit: BoxFit.cover,
                                imagePath: "assets/images/Vector_2.png",
                              ),
                              CustomImageView(
                                width: 24,
                                height: 10,
                                fit: BoxFit.cover,
                                imagePath: "assets/images/Group_38389.svg",
                              )
                            ],
                          ),
                          CustomImageView(
                            imagePath:
                                'assets/images/checkout_screen_alert_Vector.svg',
                          )
                        ],
                      ),
                    ),
                    Text(
                      "Thank you",
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.keyboard_arrow_down),
                    OrderSummaryWidget(
                      Delivery_cintainercolor: Colors.white,
                      screenHeight: MediaQuery.of(context).size.height,
                      bgcolor: Color(0XFFFFD726),
                      elevation: 0.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // CustomButton(
                        //   txt: "Status",
                        //   borderColor: Colors.red,
                        //   bgColor: Colors.red,
                        //   textColor: Colors.white,
                        // ),
                        CustomButtom(
                          txt: "Status",
                          Bordercolor: Colors.red,
                          bgColor: Colors.red,
                          Txtcolor: Colors.white,
                        ),
                        CustomButtom(
                          txt: "Home",
                          Bordercolor: Colors.black,
                          bgColor: Colors.amberAccent,
                          Txtcolor: Colors.black,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}

Drawer _buildDrawer(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),
              ),
              accountEmail: Text('jane.doe@example.com'),
              accountName: Text(
                'Jane Doe',
                style: TextStyle(fontSize: 24.0),
              ),
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.house),
              title: const Text(
                'Houses',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute<void>(
                //     builder: (BuildContext context) => const MyHomePage(
                //       title: 'Houses',
                //     ),
                //   ),
                // );
              },
            ),
            ListTile(
              leading: const Icon(Icons.apartment),
              title: const Text(
                'Apartments',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute<void>(
                //     builder: (BuildContext context) => const MyHomePage(
                //       title: 'Apartments',
                //     ),
                //   ),
                // );
              },
            ),
            ListTile(
              leading: const Icon(Icons.house_outlined),
              title: const Text(
                'Townhomes',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute<void>(
                //     builder: (BuildContext context) => const MyHomePage(
                //       title: 'Townhomes',
                //     ),
                //   ),
                // );
              },
            ),
            const Divider(
              height: 10,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text(
                'Favorites',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute<void>(
                //     builder: (BuildContext context) => const MyHomePage(
                //       title: 'Favorites',
                //     ),
                //   ),
                // );
              },
            ),
          ],
        ),
      );
  }

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    Key? key,
    required this.Txtcolor,
    required this.Bordercolor,
    required this.bgColor,
    required this.txt,
  }) : super(key: key);

  final Color Txtcolor, Bordercolor, bgColor;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
          border: Border.all(color: Bordercolor),
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: bgColor),
      child: Text(
        txt,
        style: TextStyle(color: Txtcolor, fontSize: 10),
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
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
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
