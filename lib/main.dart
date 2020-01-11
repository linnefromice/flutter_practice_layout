import 'package:flutter/material.dart';
import 'routes/Routes.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Routes.home,
      routes: Routes.routes,
    );
  }
}
