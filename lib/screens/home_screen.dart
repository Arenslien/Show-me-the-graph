import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:show_me_the_graph/screens/input_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Me The Graph"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                child: Column(
                  children: [
                    Text(
                      "아직 데이터가 없습니다. 추가해주세요.",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Text("image1"), Text("image2")],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "percentage",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                margin: EdgeInsets.all(30))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => InputScreen()));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}