import 'package:beta/splash.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(Wayfle());
}

class Wayfle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wayfle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
      ),
      home: Splash(),
    );
  }
}
