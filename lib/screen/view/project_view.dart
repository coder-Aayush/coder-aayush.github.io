import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1080),
        child: GridView.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => BlogCard(),
        ),
      ),
    );
  }
}

class BlogCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(icon: const Icon(LineIcons.link), onPressed: () {}),
                IconButton(
                    icon: const Icon(LineIcons.github), onPressed: () {}),
                IconButton(
                    icon: const Icon(LineIcons.googlePlay), onPressed: () {}),
              ],
            ),
            const Text('Project Title Goes Here'),
            const Text('Project Discription goes here...'),
            Wrap(
              children: [
                TextButton(onPressed: () {}, child: const Text('Python')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 