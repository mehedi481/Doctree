import 'package:Doctree/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Doctree",
      theme: ThemeData(
        //TODO: Add font family "Khula" . This font isn't provide by source.
      ),
      home: SplashScreen(),
    );
  }
}
