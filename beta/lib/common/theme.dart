import 'package:beta/services/shared_prefs.dart';
import 'package:flutter/material.dart';

class Themedata {
  Color primColor;
  Color bgColor;

  init() {
    if (sharedPrefs.darkmode == false || sharedPrefs.darkmode == null) {
      primColor = Colors.white;
      bgColor = Colors.white;
    } else {
      primColor = Colors.black;
      bgColor = Colors.black;
    }
  }
}

final theme = Themedata();
