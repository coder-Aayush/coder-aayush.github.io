import 'package:coderaayush/screen/view/about_view.dart';
import 'package:coderaayush/screen/view/blog_view.dart';
import 'package:coderaayush/screen/view/home_view.dart';
import 'package:coderaayush/screen/view/project_view.dart';
import 'package:coderaayush/widgets/CustomBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:coderaayush/widgets/nav_bar.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:html' as html;

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
    _controller = TabController(
      length: _screenList.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  List<Widget> _screenList = [
    HomeView(),
    AboutView(),
    BlogView(),
    ProjectView(),
  ];

  @override
  Widget build(BuildContext context) {
    /// check [pathname] and [controller.animateTo(page)]
    /// also [platform check]
    // print(html.window.location.pathname?.contains('home'));
    /// also add [meta tags] using native js code
    // print(html.document.querySelector('head').appendHtml(''));
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
                ..._screenList,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
