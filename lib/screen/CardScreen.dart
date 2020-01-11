import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  static final routeName = '/card';

  Widget _buildCard() {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                    child: Ink.image(
                      image: AssetImage('resources/images/spectacle-7.jpg'),
                      fit: BoxFit.cover,
                      child: Container(),
                    )
                ),
                Positioned(
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Astronaut',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Professional space'),
            subtitle: Text(' a person trained by a human spaceflight program to command, pilot, or serve as a crew member of a spacecraft.'),
            leading: Icon(Icons.star, color: Colors.yellowAccent),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardScreen'),
      ),
      body: Center(
        child: _buildCard(),
      ),
    );
  }
}