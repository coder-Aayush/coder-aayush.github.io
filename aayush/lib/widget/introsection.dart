import 'package:aayush/textkstyle/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: SelectableText(
              'Hola! I am Aayush Bhattarai',
              textAlign: TextAlign.center,
              style: heading1.copyWith(
                fontSize: getValueForScreenType<double>(
                  context: context,
                  desktop: 60,
                  mobile: 30,
                  tablet: 40,
                ),
              ),
              showCursor: false,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Flutter Developer From Nepal",
            style: subheading.copyWith(
              fontSize: getValueForScreenType<double>(
                context: context,
                desktop: 35,
                mobile: 20,
                tablet: 25,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                tooltip: 'Facebook',
                icon: FaIcon(FontAwesomeIcons.facebook),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Twitter',
                icon: FaIcon(FontAwesomeIcons.twitter),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Github',
                icon: FaIcon(FontAwesomeIcons.github),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Linkedin',
                icon: FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// font size in different screen type
// desktop(main:60,sub:35)
// mobile(main:30,sub:20)
