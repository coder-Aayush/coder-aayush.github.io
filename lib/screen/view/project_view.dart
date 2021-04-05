import 'package:coderaayush/helpers/flutter_hamlet.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class ProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1080),
      child: BlogCard(),
    ));
  }
}

class BlogCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(icon: Icon(LineIcons.link), onPressed: () {}),
                IconButton(icon: Icon(LineIcons.github), onPressed: () {}),
                IconButton(icon: Icon(LineIcons.googlePlay), onPressed: () {}),
              ],
            ),
            Text('Project Title Goes Here'),
            Text('Project Discription goes here...'),
            Wrap(
              children: [
                TextButton(onPressed: null, child: Text('Python')),
                TextButton(onPressed: null, child: Text('Python')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
