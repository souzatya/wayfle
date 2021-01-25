import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Text(
          'wayfle',
          style: TextStyle(
            fontFamily: 'Manrope',
            color: Colors.teal,
            fontSize: 65.0,
          ),
        ),
      ),
        
    );
  }
}