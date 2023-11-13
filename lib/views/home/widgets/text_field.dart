import 'package:flutter/material.dart';

class TextfrField extends StatelessWidget {
  TextEditingController? controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(16))));
  }
}
