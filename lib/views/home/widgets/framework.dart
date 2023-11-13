import 'package:flutter/material.dart';

class FrameWork extends StatelessWidget {
  Widget child;
  double height;
  Color color;
  double borderRadius;
  FrameWork({required this.child, this.height = 50, this.color = Colors.white,this.borderRadius=16});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: color)),
        child: child,
      ),
    );
  }
}
