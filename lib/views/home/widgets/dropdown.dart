import 'package:flutter/material.dart';
import 'package:tests/views/home/widgets/framework.dart';

class DropDown extends StatefulWidget {
  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> items = ["Select Nationality", "1", "2", "3"];

  String currentItem = '';
  @override
  void initState() {
    currentItem = items[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FrameWork(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: DropdownButton(
          borderRadius: BorderRadius.circular(16),
          iconSize: 30,
          value: currentItem,
          isExpanded: true,
          underline: Container(

          ),
          style: const TextStyle(fontSize: 18, color: Colors.blueAccent),
          dropdownColor: Colors.black45,
          iconEnabledColor: Colors.black,
          items: items
              .map<DropdownMenuItem<String>>(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ),
              )
              .toList(),
          onChanged: (String? value) => setState(
            () {
              if (value != null) currentItem = value;
            },
          ),
        ),
      ),
    );
  }
}
