import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CardListBlog extends StatefulWidget {
  @override
  _CardListBlogState createState() => _CardListBlogState();
}

class _CardListBlogState extends State<CardListBlog> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizeinfo) {
        if (sizeinfo.deviceScreenType == DeviceScreenType.desktop) {
          return DesktopCard();
        }
        if (sizeinfo.deviceScreenType == DeviceScreenType.mobile) {
          return MobileCard();
        }
        return Container();
      },
    );
  }
}

class MobileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DesktopCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
