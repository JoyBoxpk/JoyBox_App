import 'package:flutter/material.dart';
import 'package:joybox/core/app_export.dart';

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

  @override
  Size get preferredSize => Size.fromHeight(60); // Adjust the height as needed
}
