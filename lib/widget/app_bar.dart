import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Color(0xFFF9F9F8),
                size: 36.0,
              ),
              onPressed: null),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.crop_square,
            color: Color(0xFFF9F9F8),
            size: 50.0,
          ),
          SizedBox(
            width: 30,
          ),
          IconButton(
              icon: Icon(
                Icons.menu,
                color: Color(0xFFF9F9F8),
                size: 36.0,
              ),
              onPressed: null),
        ],
      ),
    );
  }
}
