import 'package:flutter/material.dart';

class BlogView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1080),
        child: Text(
          'Coming Soon',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
