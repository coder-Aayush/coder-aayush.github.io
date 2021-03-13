import 'package:coderaayush/widgets/CustomBottomNavigationBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
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

  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: width < 600 ? CustomBottomNavigationBar() : null,
      body: Column(
        children: <Widget>[
          Flexible(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 70,
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Aayush Bhattarai',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                  ),
                  Text(
                    'Something Random',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(
                          fontWeight: FontWeight.w100,
                          fontSize: 16,
                        ),
                  ),
                  SizedBox(height: 8),
                  // Center(
                  //   child: Wrap(
                  //     spacing: 10,
                  //     children: [
                  //       OutlinedButton(
                  //         onPressed: () {},
                  //         child: Text('Download Resume'),
                  //       ),
                  //       ElevatedButton(
                  //         onPressed: () {},
                  //         child: Text('Hire Me'),
                  //       ),
                  //     ],
                  //   ),
                  // )
                  Center(
                    child: OutlinedButton(
                      child: Text('Download Resume'),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  final TabController? controller;

  const NavBar({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: [
        Center(
          child: Text('hello', style: Theme.of(context).textTheme.headline1),
        ),
        Center(
          child: Text('hello', style: Theme.of(context).textTheme.headline1),
        ),
        Center(
          child: Text('hello', style: Theme.of(context).textTheme.headline1),
        ),
        Center(
          child: Text('hello', style: Theme.of(context).textTheme.headline1),
        ),
      ],
    );
  }
}
