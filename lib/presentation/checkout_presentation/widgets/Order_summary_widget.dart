import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:joybox/theme/custom_text_style.dart';

class OrderSummaryWidget extends StatelessWidget {
  const OrderSummaryWidget({
    Key? key,
    required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.amberAccent, width: 1),
      ),
      elevation: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            //height: 400,
            //width: 300,
            margin:
                EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Order summary",
                  style: CustomTextStyles.titleLargeBlackA700_1,
                ),
                SummaryRowTextWidget(
                  keytxt: "1 x Chicken Sliders",
                  valuetxt: "Rs. 1799.00",
                )
              ],
            ),
          ),
          Divider(
            color: Colors.amberAccent,
            thickness: 2,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            margin:
                EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
    
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
              //crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SummaryRowTextWidget(
                  keytxt: "Subtotal",
                  valuetxt: "Rs. 1799.00",
                ),
                SizedBox(height: screenHeight * 0.020),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Fee"),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(13),
                              color: Color(0XFFFFD726)),
                          child: Text("Free"),
                        )
                      ],
                    ),
                    Text("Welcome gift: free delivery")
                  ],
                ),
                SummaryRowTextWidget(
                  keytxt: "Platform Fee",
                  valuetxt: "Rs. 10.00",
                ),
                SummaryRowTextWidget(
                  keytxt: "VAT (value added tax)",
                  valuetxt: "Rs. 250.00",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SummaryRowTextWidget extends StatelessWidget {
  const SummaryRowTextWidget({
    Key? key,
    required this.keytxt,
    required this.valuetxt,
  }) : super(key: key);

  final String keytxt, valuetxt;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(keytxt), Text(valuetxt)],
    );
  }
}
