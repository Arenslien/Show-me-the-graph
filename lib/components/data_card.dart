import 'package:flutter/material.dart';
import 'package:show_me_the_graph/source/data_source.dart';

class DataCard extends StatefulWidget {
  DataCard(this._temp);

  final UnnamedData _temp;

  @override
  _DataCaeState createState() => _DataCaeState();
}

class _DataCaeState extends State<DataCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(Icons.person),
        title: Text(widget._temp.name),
        subtitle: Text("test"));
  }
}

class NoDataCard extends StatefulWidget {
  @override
  _NoDataCardState createState() => _NoDataCardState();
}

class _NoDataCardState extends State<NoDataCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "아직 데이터가 없습니다. 추가해주세요.",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
