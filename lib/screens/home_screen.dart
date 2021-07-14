import 'package:flutter/material.dart';
import 'package:show_me_the_graph/components/data_card.dart';
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

  // 데이터가 있을 경우 각각의 데이터 카드를 생성하는 함수
  List<DataCard> createAllDataCard(List<GraphData> dataList) {
    List<DataCard> cardList = [];
    for (var graphData in dataList) {
      cardList.add(DataCard(graphData));
    }
    return cardList;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Me The Graph"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: allData.length == 0? [NoDataCard()] : createAllDataCard(allData)
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
