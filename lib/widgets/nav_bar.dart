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
      constraints: const BoxConstraints(
        maxWidth: 1080,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FlutterLogo(),
            Row(
              children: [
                TextButton(onPressed: () => _jumpIndex(0), child: const Text('Home')),
                TextButton(
                    onPressed: () => _jumpIndex(1), child: const Text('About')),
                TextButton(onPressed: () => _jumpIndex(2), child: const Text('Blog')),
                TextButton(
                    onPressed: () => _jumpIndex(3), child: const Text('Project')),
              ],
            ),
            Row(
              children: [
                IconButton(icon: const Icon(LineIcons.facebook), onPressed: () {}),
                IconButton(icon: const Icon(LineIcons.github), onPressed: () {}),
                IconButton(icon: const Icon(LineIcons.linkedin), onPressed: () {}),
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
