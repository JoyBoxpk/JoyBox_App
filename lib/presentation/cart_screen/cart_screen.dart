import 'package:flutter/material.dart';

import '../../widgets/common_appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CommonAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.080),
            _buildProgressIndicator(),
            SizedBox(height: screenHeight * 0.025),
            _buildPaymentMethodSection(),
            SizedBox(height: screenHeight * 0.060),
            _buildPaymentButtons(),
            const SizedBox(height: 25),
            _buildCartItem(),
            const SizedBox(height: 30),
            _buildAdditionalItemsSection(),
            const SizedBox(height: 100),
            _buildFreeDeliverySection(),
            const SizedBox(height: 30),
            _buildSummarySection(),
            const SizedBox(height: 25),
            _buildPromotionalImage(),
            const SizedBox(height: 25),
            _buildCutlerySection(),
            const SizedBox(height: 25),
            _buildFooterImage(),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }


  Widget _buildProgressIndicator() {
    return SizedBox(
      height: 50.0,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Divider(
            color: Color(0xFFFFD726),
            thickness: 1.2,
          ),
          Positioned.fill(
            top: -10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildProgressStep("1", "Menu"),
                _buildProgressStep("2", "Cart"),
                _buildProgressStep("3", "Checkout"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressStep(String step, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: Color(0xFFFFD726),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text(
            step,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
        )
      ],
    );
  }

  Widget _buildPaymentMethodSection() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 155,
          color: Color(0xFFF14530),
        ),
        Positioned(
          top: 15.0,
          right: 100.0,
          left: 100.0,
          child: Text(
            "Payment Method",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Positioned(
          bottom: -30,
          right: -5,
          left: -5,
          child: Image.asset("assets/images/cart_img1.png", width: 50, height: 100),
        ),
        Positioned(
          bottom: -30,
          right: 30,
          child: Image.asset("assets/images/cart_img2.png", width: 80,height: 80,),
        ),
      ],
    );
  }

  Widget _buildPaymentButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildPaymentButton("Cash", const Color(0xFFFFD726), Colors.black),
        _buildPaymentButton("Online", const Color(0xFFD9D9D9), const Color(0xFF67666D)),
        _buildPaymentButton("JB Wallet", const Color(0xFFD9D9D9), const Color(0xFF67666D)),
      ],
    );
  }

  Widget _buildPaymentButton(String label, Color color1, Color color2) {
    return SizedBox(
      width: 110,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          backgroundColor: color1,
          foregroundColor: color2,
        ),
        onPressed: () {},
        child: Text(label),
      ),
    );
  }

  Widget _buildCartItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(
          "assets/images/car_img3.png",
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10),
        Container(
          width: 230,
          height: 80,
          decoration: BoxDecoration(
            color: Color(0xFFFFD726),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Chicken\nSlider"),
              const SizedBox(width: 2),
              Text("Rs. 1799.00"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAdditionalItemsSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Add more items",
            style: TextStyle(
              color: Color(0xFFF14530),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Popular with your order",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    "assets/images/cart_img4.png",
                    width: 86,
                    height: 79.03,
                  ),
                  Positioned(
                    left: -35,
                    child: Image.asset(
                      "assets/images/cart_img5.png",
                      width: 150,
                    ),
                  ),
                  Positioned(
                    bottom: -17,
                    left: 58,
                    child: Container(
                      alignment: Alignment.center,
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xFFF14530),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18.0,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -55,
                    left: -14,
                    child: Text("Rs. 199.00\nFries"),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    "assets/images/cart_img4.png",
                    width: 86,
                    height: 79.03,
                  ),
                  Positioned(
                    left: -35,
                    child: Image.asset(
                      "assets/images/cart_img5.png",
                      width: 150,
                    ),
                  ),
                  Positioned(
                    bottom: -17,
                    left: 58,
                    child: Container(
                      alignment: Alignment.center,
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xFFF14530),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18.0,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -55,
                    left: -14,
                    child: Text("Rs. 199.00\nFries"),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    "assets/images/cart_img4.png",
                    width: 86,
                    height: 79.03,
                  ),
                  Positioned(
                    left: -35,
                    child: Image.asset(
                      "assets/images/cart_img5.png",
                      width: 150,
                    ),
                  ),
                  Positioned(
                    bottom: -17,
                    left: 58,
                    child: Container(
                      alignment: Alignment.center,
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xFFF14530),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18.0,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -55,
                    left: -14,
                    child: Text("Rs. 199.00\nFries"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFreeDeliverySection() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset("assets/images/cart_img10.png"),
        Positioned.fill(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/cart_img11.png"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Get free delivery with pro"),
                    SizedBox(height: 10),
                    Text("Subscribe from Rs. 150.00/\nmonth"),
                  ],
                ),
                Text(
                  "Add to cart",
                  style: TextStyle(color: Color(0xFFFFD726)),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -15,
          right: 80,
          child: Container(
            alignment: Alignment.center,
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF14530),
            ),
            child: Text(
              "PRO",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSummarySection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Subtotal"), Text("Rs. 1799.01")],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Delivery Fee"),
                  Text("Welcome gift: free delivery"),
                ],
              ),
              Image.asset("assets/images/cart_img12.png"),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("Platform Fee"),
                  const SizedBox(width: 5),
                  Icon(Icons.info_outlined)
                ],
              ),
              Text("Rs. 10.00"),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("VAT (value added tax)"),
              Text("Rs. 250.00"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPromotionalImage() {
    return Stack(
      children: [
        Image.asset("assets/images/cart_img13.png"),
        Positioned.fill(
            child: Center(child: Image.asset("assets/images/cart_img14.png"))),
      ],
    );
  }

  Widget _buildCutlerySection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Cutlery"),
          Image.asset("assets/images/cart_img15.png"),
        ],
      ),
    );
  }

  Widget _buildFooterImage() {
    return Image.asset("assets/images/cart_img16.png");
  }

}






