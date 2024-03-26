import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:joybox/widgets/custom_image_view.dart';

class Delivery_widget extends StatelessWidget {
  const Delivery_widget({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required ValueNotifier<bool> controller,
  })  : _controller = controller,
        super(key: key);

  final double screenHeight;
  final double screenWidth;
  final ValueNotifier<bool> _controller;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.amberAccent, width: 1),
      ),
      elevation: 20,
      child: Column(
        children: [
          SizedBox(height: screenHeight * 0.020),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        Text("Delivery address")
                      ],
                    ),
                    Icon(Icons.edit, color: Colors.red)
                  ],
                ),
                SizedBox(height: screenHeight * 0.020),
                CustomImageView(
                  fit: BoxFit.contain,
                  width: screenWidth,
                  imagePath: 'assets/images/Rectangle 4744.png',
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Gulshan e Iqbal",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                CustomImageView(
                  imagePath: 'assets/images/Character.svg',
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            //margin: EdgeInsets.all(20),
            width: screenWidth,
            height: screenHeight * 0.080,
            decoration: BoxDecoration(color: Colors.amberAccent),
            child: Center(
                child: Text(
                  
              "+ Add delivery instruction for your rider",
              maxLines: 3,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            )),
          ),
          Container(
            height: screenHeight * 0.060,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Contact you",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent),
                ),
                AdvancedSwitch(
                  controller: _controller,
                  activeColor: Colors.amberAccent,
                  inactiveColor: Colors.grey,
                  // activeChild: Text('ON'),
                  // inactiveChild: Text('OFF'),
                  //activeImage: AssetImage('assets/images/on.png'),
                  //inactiveImage: AssetImage('assets/images/off.png'),
                  borderRadius: BorderRadius.all(const Radius.circular(5)),
                  width: 50.0,
                  height: 30.0,
                  enabled: true,
                  //disabledOpacity: 0.5,
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
