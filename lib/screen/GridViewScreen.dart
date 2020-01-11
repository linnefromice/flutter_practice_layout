import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  static final routeName = '/gridscreen';

  @override
  State<StatefulWidget> createState() => _GridViewScreen();
}

class _GridViewScreen extends State<GridViewScreen> {
  List<Container> _buildGridTileList(final int count) => List.generate(
      count, (index) => Container(child: Image.asset('resources/images/spectacle-$index.jpg'),)
  );

  Widget _buildGrid() => Container(
    decoration: BoxDecoration(color: Colors.black),
    child: GridView.extent(
      maxCrossAxisExtent: 150,
      padding: EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _buildGridTileList(11),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('GridViewScreen')
      ),
      body: Center(
        child: _buildGrid(),
      ),
    );
  }
}