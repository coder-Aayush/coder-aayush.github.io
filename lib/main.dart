import 'package:coderaayush/screen/layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
