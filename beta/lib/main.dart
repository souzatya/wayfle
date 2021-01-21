import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(WayfleB());
}

class WayfleB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wayfle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
        fontFamily: 'Proxima Nova',
      ),
      home: Home(),
    );
  }
}
