import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  static final routeName = '/container';

  @override
  State<StatefulWidget> createState() => _ContainerScreen();
}

class _ContainerScreen extends State<ContainerScreen> {

  Widget _buildDecoratedImage(String path) => Container(
    decoration: BoxDecoration(
      border: Border.all(width: 10, color: Colors.grey),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    margin: EdgeInsets.all(4.0),
    child: Image.asset(path),
  );

  Widget _buildImageRow(String path1, String path2, String path3) => Row(
    children: <Widget>[
      Expanded(child: _buildDecoratedImage(path1)),
      Expanded(child: _buildDecoratedImage(path2)),
      Expanded(child: _buildDecoratedImage(path3)),
    ],
  );

  Widget _buildImageColumn() => Container(
    decoration: BoxDecoration(color: Colors.black),
    child: Column(
      children: <Widget>[
        _buildImageRow(
          'resources/images/spectacle-1.jpg',
          'resources/images/spectacle-2.jpg',
          'resources/images/spectacle-3.jpg',
        ),
        _buildImageRow(
          'resources/images/spectacle-4.jpg',
          'resources/images/spectacle-5.jpg',
          'resources/images/spectacle-6.jpg',
        ),
        _buildImageRow(
          'resources/images/spectacle-7.jpg',
          'resources/images/spectacle-8.jpg',
          'resources/images/spectacle-9.jpg',
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('ContainerScreen')
      ),
      body: Center(
        child: _buildImageColumn(),
      ),
    );
  }
}
