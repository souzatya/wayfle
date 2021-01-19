import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(WayfleB());
}

class WayfleB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => ThemeData(
              primarySwatch: Colors.green,
              brightness: brightness,
            ),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            title: 'Wayfle Beta',
            theme: theme,
            home: Home(title: 'Wayfle Home'),
          );
        });
  }
}
