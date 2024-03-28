import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:joybox/core/app_export.dart';

class DrwaerScreen extends StatelessWidget {
  DrwaerScreen({Key? key}) : super(key: key);

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
          color: Color(0XFFFFD726),
          borderRadius: BorderRadius.circular(20),
          child: Container(
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
                  child: Positioned.fill(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Center(
                            child: CustomImageView(
                              fit: BoxFit.contain,
                              imagePath: 'assets/images/46bed14295d9fecf2fb3de020613b62a.png',
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
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "PKR 2.500",
                style: TextStyle(color: Colors.white),
              ),
            ),
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
        SizedBox(
          height: devheight*0.5,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 30),
            shrinkWrap: false,
            itemCount: DrawerSettingItem.drawerItems.length, // Accessing drawerItems from the class
            itemBuilder: (context, index) {
              final item = DrawerSettingItem.drawerItems[index]; // Accessing drawerItems from the class
              return ListTile(
                leading: CustomImageView(
                  fit: BoxFit.contain,
                  imagePath: item.iconpath,
                  height: devheight*0.07,
                  width:devwidth* 0.07,
                ),
                title: Text(item.title),
                 onTap: () {
                  // Handle onTap action for each item if needed
                  _navigateToScreen(context, item.title);
                },
              );
            },
          ),
        )
      ,const Divider(
          height: 10,
          thickness: 1,
          color: Color(0XFFFFD726),
        ),
        Container(
          height: devheight*0.12,
          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Text("Settings",style: CustomTextStyles.bodyMedium14,),
              Text("Terms & Conditions / Privacy",style: CustomTextStyles.bodyMedium14,),
              Text("Log out",style: CustomTextStyles.bodyMedium14,)
              
            ],
          ),
        )
      ],
    ),
  );
}

void _navigateToScreen(BuildContext context, String title) {
  switch (title) {
    case "Support":
      
      break;
    case "Notifications":
      
      break;
    // Add more cases for other screens
    default:
      // Do nothing or handle other cases
      break;
  }
}

class DrawerSettingItem {
  final iconpath;
  final String title;

  DrawerSettingItem({
    required this.iconpath,
    required this.title,
  });

  static final List<DrawerSettingItem> drawerItems = [
    DrawerSettingItem(
      iconpath: "assets/images/drawer_notiification_img.svg",
      title: 'Notifications',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_2.svg",
      title: 'Ordering & reordering',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_3.svg",
      title: 'Offers & Voucher',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_4.svg",
      title: 'Become JB Pro',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_5.svg",
      title: 'Profile',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_6.svg",
      title: 'Inbox',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_7.svg",
      title: 'Transactions',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_8.svg",
      title: 'JB rewards',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_9.svg",
      title: 'JB memberships',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_10.svg",
      title: 'Support',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_11.svg",
      title: 'Invite friends',
    ),
    DrawerSettingItem(
      iconpath: "assets/images/drawer_img_12.svg",
      title: 'Language',
    ),
    // Add more items as needed
  ];
}
