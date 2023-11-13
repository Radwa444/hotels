import 'package:flutter/material.dart';
import 'package:tests/views/home/widgets/Choices.dart';
import 'package:tests/views/home/widgets/dropdown.dart';
import 'package:tests/views/home/widgets/framework.dart';
import 'package:tests/views/home/widgets/text_field.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 320,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(16))),
        ),
        Container(
          height: 270,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Column(
            children: [
              FrameWork(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.blueAccent)),
                    child: const Center(
                        child: Text('select city',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 18,
                            ))),
                  ),
                ),
              ),
              FrameWork(
                  child:  Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextfrField(),

              )),
              DropDown(),
              Choices()
            ],
          ),
        ),
        Positioned(
          height: 590,
          left: 110,
          child: Row(
            children: [
              const Text('find hotels',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                iconSize: 36,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }
}
