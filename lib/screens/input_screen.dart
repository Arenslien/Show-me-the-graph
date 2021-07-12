import 'package:flutter/material.dart';
import 'package:show_me_the_graph/components/data_check_list_item.dart';

class InputScreen extends StatefulWidget {

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    // 스마트폰 사이즈 가져오기
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "제목"
                ),
              ),
              Flexible(
                child: ListView(
                  children: [
                    CustomCheckListItem(number: 1),
                    CustomCheckListItem(number: 2),
                    CustomCheckListItem(number: 3),
                    CustomCheckListItem(number: 4),
                    CustomCheckListItem(number: 5),
                    CustomCheckListItem(number: 6),
                    CustomCheckListItem(number: 7),
                    CustomCheckListItem(number: 8),
                    CustomCheckListItem(number: 9),
                    CustomCheckListItem(number: 10),
                  ],
                )
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("제출", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
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
