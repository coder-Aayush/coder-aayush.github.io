import 'package:coderaayush/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> with SingleTickerProviderStateMixin {
  /// TODO: Store `controller` in [state]
  TabController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(
            controller: _controller,
          ),

          /// Wrap with [Flexiable]
          Flexible(
            child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: _controller,
                children: [
                  Center(child: Text('home')),
                  Text('about'),
                  Text('blog'),
                  Text('project'),
                  // HomeView(),
                  // AboutView(),
                  // BlogView(),
                  // ProjectsView(),
                ]),
          ),
        ],
      ),
    );
  }
}
