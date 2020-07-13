import 'package:aayush/widget/introsection.dart';
import 'package:aayush/widget/navbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        textSelectionColor: Color(0xff0000),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Aayush Bhattarai - Junior Flutter Developer',
      home: Scaffold(
        body: Wrapper(),
      ),
    );
  }
}

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      NavBar(),
      HeroSection(),
    ]);
  }
}
