import 'package:coderaayush/screen/view/home_view.dart';
import 'package:coderaayush/widgets/CustomBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:coderaayush/widgets/nav_bar.dart';

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
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: width < 600
          ? CustomBottomNavigationBar(controller: _controller)
          : null,
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
                HomeView(),
                Center(child: Text('about')),
                Center(child: Text('blog')),
                Center(child: Text('project')),
                // AboutView(),
                // BlogView(),
                // ProjectsView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
