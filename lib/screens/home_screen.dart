import 'package:flutter/material.dart';
import 'package:show_me_the_graph/components/data_card.dart';
import 'package:show_me_the_graph/source/data_source.dart';
import 'package:show_me_the_graph/screens/input_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final temp = <UnnamedData>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Me The Graph"),
      ),
      body: Center(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: temp.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) return NoDataCard();
            return Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        "data1",
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
                  margin: EdgeInsets.all(30)
                )
              ],
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => InputScreen()));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      )
    );
  }
}
