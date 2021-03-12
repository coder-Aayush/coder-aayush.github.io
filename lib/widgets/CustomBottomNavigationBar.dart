import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Container(),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            icon: Container(),
            label: 'Contact',
          ),
        ]);
  }
}
