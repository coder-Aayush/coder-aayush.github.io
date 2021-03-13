import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class NavBar extends StatelessWidget {
  final TabController? controller;

  const NavBar({@required this.controller});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrant) {
        if (constrant.maxWidth > 600) {
          return _Nav(
            controller: controller,
          );
        }
        return Container();
      },
    );
  }
}

class _Nav extends StatelessWidget {
  final TabController? controller;

  const _Nav({@required this.controller});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 1080,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlutterLogo(),
            Row(
              children: [
                TextButton(onPressed: () => _jumpIndex(0), child: Text('Home')),
                TextButton(
                    onPressed: () => _jumpIndex(1), child: Text('About')),
                TextButton(onPressed: () => _jumpIndex(2), child: Text('Blog')),
                TextButton(
                    onPressed: () => _jumpIndex(3), child: Text('Project')),
              ],
            ),
            Row(
              children: [
                IconButton(icon: Icon(LineIcons.facebook), onPressed: () {}),
                IconButton(icon: Icon(LineIcons.github), onPressed: () {}),
                IconButton(icon: Icon(LineIcons.linkedin), onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _jumpIndex(int index) {
    controller?.animateTo(index);
  }
}
