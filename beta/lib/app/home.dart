import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:beta/services/shared_prefs.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Container(
              margin: EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/1222789627074842625/T99zld9f_400x400.jpg'),
              ),
            ),
            floating: true,
            titleSpacing: 5,
            title: Text(
              'wayfle',
              style: const TextStyle(
                color: Colors.teal,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Manrope',
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(top: 8.0, bottom: 8.0, right: 5.0),
                child: FlutterSwitch(
                  width: 60.0,
                  height: 30.0,
                  toggleSize: 30.0,
                  value: sharedPrefs.darkmode,
                  borderRadius: 30.0,
                  padding: 0.0,
                  activeToggleColor: Colors.teal[900],
                  inactiveToggleColor: Colors.teal,
                  activeSwitchBorder: Border.all(
                    color: Colors.tealAccent.withOpacity(0.8),
                    width: 5.0,
                  ),
                  inactiveSwitchBorder: Border.all(
                    color: Colors.grey.withOpacity(0.3),
                    width: 5.0,
                  ),
                  activeColor: Colors.teal.withOpacity(0.2),
                  inactiveColor: Colors.white,
                  activeIcon: Icon(
                    Icons.nightlight_round,
                    color: Colors.yellow,
                  ),
                  inactiveIcon: Icon(
                    Icons.wb_sunny,
                    color: Colors.yellow,
                  ),
                  onToggle: (value) => setState(() {
                    sharedPrefs.darkmode = value;
                    Timer(Duration(milliseconds: 300),
                        () => Phoenix.rebirth(context));
                  }),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.0, bottom: 8.0, right: 5.0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.search_rounded),
                  color: Colors.teal,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        child: Icon(Icons.message),
        onPressed: () {},
      ),
    );
  }
}
