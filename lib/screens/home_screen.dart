import 'package:flutter/material.dart';
import 'package:show_me_the_graph/screens/no_data_screen.dart';
import 'package:show_me_the_graph/screens/yes_data_screen.dart';
import 'package:show_me_the_graph/source/data_source.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<UnnamedData> temp = <UnnamedData>[];
  @override
  
  Widget build(BuildContext context) {
    if (temp.length == 0) {
      return NoDataScreen();
    } else {
      return YesDataScreen();
    }
  }
}
