import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tests/view_model/home/home_cubit.dart';
import 'package:tests/views/home/widgets/Childrens.dart';
import 'package:tests/views/home/widgets/counter.dart';
import 'package:tests/views/home/widgets/framework.dart';
import 'package:tests/views/home/widgets/pet_friendly.dart';

class ShowModalBottom extends StatelessWidget {
  const ShowModalBottom({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16))),
              child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(),
                const Text(
                  'Rooms and Guests',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close))
              ]),
            ),
            FrameWork(
              borderRadius: 5,
              child: Counter(
                  colorIn: homeCubit.counterRooms == 4
                      ? Colors.blueGrey
                      : Colors.blueAccent,
                  colorde: homeCubit.counterRooms == 0
                      ? Colors.blueGrey
                      : Colors.blueAccent,
                  title: 'Rooms',
                  increment: () {
                    homeCubit.IncrementRooms();
                  },
                  decrement: () {
                    homeCubit.DecrementRooms();
                  },
                  counter: homeCubit.counterRooms.toString()),
            ),
            FrameWork(borderRadius: 5,height: 230, child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Room 1'),
              ),
              const SizedBox(height: 15,),
              Counter(
                  colorIn: homeCubit.counterAdults == 4
                      ? Colors.blueGrey
                      : Colors.blueAccent,
                  colorde: homeCubit.counterAdults == 0
                      ? Colors.blueGrey
                      : Colors.blueAccent,
                  title: 'Adults',
                  increment: () {
                    homeCubit.IncrementAdults();
                  },
                  decrement: () {
                    homeCubit.DecrementAdults();
                  },
                  counter: homeCubit.counterAdults.toString()),
              const SizedBox(height: 15,),
              Counter(
                  colorIn: homeCubit.counterChildren == 4
                      ? Colors.blueGrey
                      : Colors.blueAccent,
                  colorde: homeCubit.counterChildren == 0
                      ? Colors.blueGrey
                      : Colors.blueAccent,
                  title: 'Children',
                  increment: () {
                    homeCubit.IncrementChildren();
                  },
                  decrement: () {
                    homeCubit.DecrementChildren();
                  },
                  counter: homeCubit.counterChildren.toString()),
              const SizedBox(height: 20,),
              const Childrens(),
              const SizedBox(height: 10,),
              const Childrens(),
            ],)),
            FrameWork(height: 60,
                child: PetFriendly()),
            SizedBox(height: 90,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 50,width: double.infinity,
                child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),child:Text('Apply',style:
        const TextStyle(fontSize: 16, color: Colors.white),)),
              ),
            )
          ],
        );
      },
    );
  }
}
