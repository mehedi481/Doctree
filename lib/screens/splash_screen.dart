import 'dart:async';
import 'package:Doctree/screens/onBoard_Screens/onBoard_One.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), timeFinished); // you can change waiting time
  }

  void timeFinished() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnBoard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Image.asset(
            "assets/logo/DoctorApp3.png",
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
