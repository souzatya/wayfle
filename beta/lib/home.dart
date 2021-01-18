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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            title: Text("wayfle"),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                leading: Icon(Icons.volume_off),
                title: Text("Volume Off"),
              ),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
              ListTile(
                  leading: Icon(Icons.volume_down), title: Text("Volume Down")),
            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeBrightness,
        child: const Icon(Icons.message),
        backgroundColor: Colors.teal[400],
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
