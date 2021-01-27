import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:beta/home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: TyperAnimatedTextKit(
          speed: Duration(milliseconds: 150),
          text: ["wayfle"],
          textStyle: TextStyle(
            color: Colors.teal,
            fontSize: 60.0,
            fontFamily: "Manrope",
          ),
          isRepeatingAnimation: false,
        ),
      ),
    );
  }
}
