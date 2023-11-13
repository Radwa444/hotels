import 'package:flutter/material.dart';

class Childrens extends StatelessWidget {
  const Childrens({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [Text(
        'Children',
        style: TextStyle(fontSize: 15, color: Colors.black45),),
        Spacer(),
        Text(
          '14 years',
          style: TextStyle(fontSize: 15, color: Colors.black45),)],

      ),
    );
  }
}
