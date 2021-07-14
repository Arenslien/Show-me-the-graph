import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();

  static _CustomDropDownButtonState? of(BuildContext context) => context.findAncestorStateOfType<_CustomDropDownButtonState>();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  // 체크 관련 함수
  String dropdownValue = '체크';

  // checkValue값 가져오는 함수
  bool getCheckValue() {
    return dropdownValue == '체크';
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 20,
      elevation: 1,
      style: const TextStyle(color: Colors.amber),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: ['체크', '미체크']
          .map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
      }).toList(),
    );
  }
}
