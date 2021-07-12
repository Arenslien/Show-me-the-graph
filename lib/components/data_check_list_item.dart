import 'package:flutter/material.dart';
import 'package:show_me_the_graph/components/dropdown_button.dart';

class CustomCheckListItem extends StatefulWidget {
  final int number;
  
  CustomCheckListItem({required this.number});
  @override
  _CustomCheckListItemState createState() => _CustomCheckListItemState();
}

class _CustomCheckListItemState extends State<CustomCheckListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(10.0)
      ),
      height: 50,
      child: Row(
        children: [
          SizedBox(width: 20),
          Text(
            widget.number.toString(),
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.amber
            ),
            
          ),
          VerticalDivider(
            color: Colors.amber,
            thickness: 3,
            indent: 10,
            endIndent: 10,
            width: 50,
          ),
          Expanded(child:Container()),
          CustomDropDownButton(),
          SizedBox(width: 20),
        ],
      )
    );
  }
}