import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view_model/home/home_cubit.dart';

typedef function = Function()?;

class Counter extends StatelessWidget {
  String title;
  function increment;
  function decrement;
  String counter;
  Color colorIn;
  Color colorde;
  Counter(
      {required this.title,
      required this.counter,
      required this.decrement,
      required this.increment,
      required this.colorIn,
      required this.colorde});
  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = BlocProvider.of<HomeCubit>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(children: [
        const SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
     const Spacer(),
        SizedBox(
            height: 30,
            width: 35,
            child: IconButton(
                onPressed: decrement,
                style: IconButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: colorde),
                        borderRadius: BorderRadius.circular(16))),
               icon:  const Center(child: Icon(Icons.minimize,size: 16,)))),
        const SizedBox(width: 10,),
        Text(
          counter,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
        const SizedBox(width: 10,),
        SizedBox(
            height: 30,
            width: 35,
            child: IconButton(
                onPressed: increment,
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: colorIn),
                        borderRadius: BorderRadius.circular(16))),
                icon: const Center(child: Icon(Icons.add,size: 16,)))),
        const SizedBox(
          width: 5,
        ),
      ]),
    );
  }
}
