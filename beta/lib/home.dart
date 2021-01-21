import 'package:flutter/material.dart';

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
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.teal,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.0, bottom: 8.0, right: 5.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.menu_rounded),
                  color: Colors.teal,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
