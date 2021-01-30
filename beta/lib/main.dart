import 'package:beta/app/splash.dart';
import 'package:flutter/material.dart';
import 'package:beta/services/shared_prefs.dart';
import 'package:beta/common/theme.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:beta/app/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sharedPrefs.init();
  runApp(Phoenix(child: Wayfle()));
}

class Wayfle extends StatefulWidget {
  @override
  _WayfleState createState() => _WayfleState();
}

class _WayfleState extends State<Wayfle> {
  @override
  void initState() {
    super.initState();
    theme.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wayfle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: theme.bgColor,
        backgroundColor: theme.bgColor,
        primaryColor: theme.primColor,
      ),
      home: home ?? Splash(),
    );
  }
}
