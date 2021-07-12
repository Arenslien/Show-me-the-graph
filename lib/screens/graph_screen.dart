import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphScreen extends StatefulWidget {
  @override
  _GraphScreenState createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  String g_title = '명사 "엄마"';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(g_title),
        actions: <Widget>[TextButton(onPressed: () {}, child: Text("전체보기"))],
      ),
      body: Center(
        child: Text("Graph Screen"),
      ),
    );
  }
}
