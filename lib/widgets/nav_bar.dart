import 'package:flutter/material.dart';

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
                TextButton(
                    onPressed: () => controller?.animateTo(0),
                    child: Text('Home')),
                TextButton(
                    onPressed: () => controller?.animateTo(1),
                    child: Text('About')),
                TextButton(
                    onPressed: () => controller?.animateTo(2),
                    child: Text('Blog')),
                TextButton(
                    onPressed: () => controller?.animateTo(3),
                    child: Text('Project')),
              ],
            ),
            Row(
              children: [
                IconButton(icon: Icon(Icons.fact_check), onPressed: () {}),
                IconButton(icon: Icon(Icons.fact_check), onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
