import 'package:flutter/material.dart';
import 'package:show_me_the_graph/components/data_check_list_item.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {

  // 체크 리스트 아이템 위젯 만드는 함수
  List<CustomCheckListItem> createCheckItemList() {
    List<CustomCheckListItem> list = [];
    for (int i=1; i<=10; i++) {
      list.add(CustomCheckListItem(number: i));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // 스마트폰 사이즈 가져오기
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int cardCount = 0;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(), labelText: "제목"
                  ),
              ),
              Flexible(
                child: ListView(
                  children: createCheckItemList(),
                )
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("제출",
                  style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold
                  )
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  minimumSize: Size(width * 0.9, 40.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
