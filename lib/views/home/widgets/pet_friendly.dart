import 'package:flutter/material.dart';

class PetFriendly extends StatelessWidget {
  const PetFriendly({super.key});

  @override
  Widget build(BuildContext context) {
    bool select = true;
    return  Padding(
      padding: EdgeInsets.all(5.0),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [Text('pet_friendly'), Icon(Icons.abc_outlined)],
              ),
              Text('only show stays that allow pets',
                  style: TextStyle(fontSize: 12, color: Colors.black45)),
            ],
          ),
          Spacer(),
          Switch(
              activeColor: Colors.white,
              activeTrackColor: Colors.grey,
              inactiveThumbColor: Colors.cyan,
              inactiveTrackColor: Colors.red,
              splashRadius: 50.0,
              value: select,
              onChanged: (value) => select = value),
        ],
      ),
    );
  }
}
