import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CardScreen.dart';
import 'ContainerScreen.dart';
import 'GridViewScreen.dart';
import 'ListViewScreen.dart';

class HomeScreen extends StatefulWidget {
  static final routeName = '/home';

  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {

  Widget _buildDrawer() => Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Container(
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue, Colors.red]
                )
            ),
            child: Text(
              'Navigation Menu',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0
              ),
            ),
          ),
        ),
        ListTile(
            title: Text('Container Screen'),
            onTap: () => Navigator.pushNamed(context, ContainerScreen.routeName)
        ),
        ListTile(
            title: Text('GridView Screen'),
            onTap: () => Navigator.pushNamed(context, GridViewScreen.routeName)
        ),
        ListTile(
            title: Text('ListView Screen'),
            onTap: () => Navigator.pushNamed(context, ListViewScreen.routeName)
        ),
        ListTile(
            title: Text('Card Screen'),
            onTap: () => Navigator.pushNamed(context, CardScreen.routeName)
        )
      ],
    ),
  );

  Widget _buildStack() => Stack(
    alignment: Alignment(0.6, 0.6),
    children: <Widget>[
      Image.asset('resources/images/spectacle-0.jpg'),
      Text(
        'Gallery GALAXY/SPACE/PLANET',
        style: TextStyle(
            color: Colors.white
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      drawer: _buildDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildStack()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.star),
      ),
    );
  }
}