import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$this',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
