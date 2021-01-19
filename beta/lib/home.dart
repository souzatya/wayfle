import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.camera_rounded),
        title: Text("wayfle"),
        actions: [
          Switch(value: false, onChanged: (val){}),
          SizedBox(width: 10),
          Icon(Icons.search),
          SizedBox(width: 10),
        ],
        brightness: Brightness.light,
      ),
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget> [
          Container(
            color: Colors.green,
          ),
          Container(
            height: 600,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeBrightness,
        child: const Icon(Icons.message),
        backgroundColor: Colors.green,
      ),
    );
  }

  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }
}
