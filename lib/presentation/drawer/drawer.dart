import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:joybox/core/app_export.dart';

class DrawerWidget extends StatelessWidget {
   DrawerWidget({Key? key}) : super(key: key);


  final List<DrawerSettingItem> drawerItems = [
    DrawerSettingItem(
      iconpath: "",
      title: 'Home',
    ),
    DrawerSettingItem(
      iconpath: "",
      title: 'Settings',
    ),
    DrawerSettingItem(
      iconpath: "",
      title: 'About',
    ),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: _buildDrawer(context, screenHeight, screenWidth),
    );
  }
}

Drawer _buildDrawer(BuildContext context, devheight, devwidth) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        Material(
          elevation: 10,
          //borderRadius: BorderRadius.circular(20),
          color: Color(0XFFFFD726),
          borderRadius: BorderRadius.circular(20),
          child: Container(
            decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(20),
                //color: Color(0XFFFFD726),
                ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: CustomImageView(
                    fit: BoxFit.cover,
                    imagePath: 'assets/images/Group_289387.svg',
                  ),
                ),
                Container(
                  height: devheight * 0.13,
                  width: devwidth * 0.14,
                  //height: 40, // Set the desired height here
                  //width: double.infinity, // Make sure the container takes up full width
                  child: Positioned.fill(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10), // Set border radius here
                          child: Center(
                            child: CustomImageView(
                              fit: BoxFit.contain,
                              imagePath:
                                  'assets/images/46bed14295d9fecf2fb3de020613b62a.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          "Haris Ahmed",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.edit)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        ListTile(
          title: Text("JB pays"),
          subtitle: Text("Top up your offers"),
          trailing: Container(
            height: devheight * 0.04,
            width: devwidth * 0.18,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Center(
                child: Text(
              "PKR 2.500",
              style: TextStyle(color: Colors.white),
            )),
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
        const Divider(
          height: 10,
          thickness: 1,
          color: Color(0XFFFFD726),
        ),
      ],
    ),
  );
}

class DrawerSettingItem {
  final iconpath;
  
  final String title;

  DrawerSettingItem({
    required this.iconpath,
    
    required this.title,
  });
}