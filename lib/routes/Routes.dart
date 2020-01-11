import 'package:flutter/cupertino.dart';
import '../screen/HomeScreen.dart';
import '../screen/ContainerScreen.dart';
import '../screen/GridViewScreen.dart';
import '../screen/ListViewScreen.dart';
import '../screen/CardScreen.dart';

class Routes {
  static final home = HomeScreen();
  static final routes = <String, WidgetBuilder> {
    HomeScreen.routeName : (context) => HomeScreen(),
    ContainerScreen.routeName : (context) => ContainerScreen(),
    GridViewScreen.routeName : (context) => GridViewScreen(),
    ListViewScreen.routeName : (context) => ListViewScreen(),
    CardScreen.routeName : (context) => CardScreen(),
  };
}