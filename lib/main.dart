import 'package:coderaayush/screen/layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aayush Bhattarai',
      home: MyApp(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout();
  }
}
