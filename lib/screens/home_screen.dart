import 'package:flutter/material.dart';
import 'package:show_me_the_graph/screens/input_screen.dart';
import 'package:show_me_the_graph/source/data_source.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<GraphData> allData = [];

  // 데이터 베이스에서 모든 데이터를 가져오는 함수
  List<GraphData> getAllDataFromDB() {
    List<GraphData> dataList = [];
    // 가져오는 Logic
    return dataList;
  }

  // 상태 초기화 -> 서버에서 모든 데이터를 가져옴
  @override
  void initState() {
    super.initState();
    allData = getAllDataFromDB();
  }

  // 데이터가 없을 경우 데이터가 없다는 위젯을 생성하는 함수
  void createNoDataCard() {
    // 위젯 생성하는 logic

  }

  // 데이터가 있을 경우 각각의 데이터 카드를 생성하는 함수
  void createAllDataCard() {

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Me The Graph"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: allData.length == 0? [] : [],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => InputScreen())
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
