import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  static final routeName = '/listview';

  @override
  State<StatefulWidget> createState() => _ListViewScreen();
}

class _ListViewScreen extends State<ListViewScreen> {
  Widget _buildListTile(final int index) => Container(
    width: double.infinity,
    height: 200,
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('resources/images/spectacle-$index.jpg'),
          fit: BoxFit.cover,
        )
    ),
    child: Text(
      'No.$index',
      style: TextStyle(
          color: Colors.white,
          fontSize: 25.0
      ),
    ),
  );

  List<Container> _buildListTileList(final int count) => List.generate(
    count,
        (index) => _buildListTile(index),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('ListViewScreen')
      ),
      body: Center(
        child: ListView(
            children: _buildListTileList(11)
        ),
      ),
    );
  }
}