import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final TabController? controller;

  const CustomBottomNavigationBar({this.controller});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      /// save value in global state and check for current
      /// value and chnage the selected color
      /// [selectedItemColor]: , /// check here the condition
      onTap: (s) {
        controller?.animateTo(s);
      },
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
          label: 'Projects',
        ),
      ],
    );
  }
}
