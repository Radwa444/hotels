import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tests/views/home/widgets/showModalBottom.dart';

import '../../../view_model/home/home_cubit.dart';

class Choices extends StatefulWidget {
  const Choices({super.key});

  @override
  State<Choices> createState() => _ChoicesState();
}

class _ChoicesState extends State<Choices> {
  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  onPressed: () {
                    setState(() {});

                    showModalBottomSheet(
                      context: context,
                      isDismissible: true,
                      useSafeArea: true,
                      scrollControlDisabledMaxHeightRatio: 300,
                      isScrollControlled: true,
                      backgroundColor: Colors.blueGrey.shade50,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                      ),
                      builder: (context) {
                        return const ShowModalBottom();
                      },
                    );
                  },
                  child: Text(
                    '${homeCubit.counterRooms}Rooms   ${homeCubit.counterAdults}Adults   ${homeCubit.counterChildren}Children',
                    style:
                        const TextStyle(fontSize: 16, color: Colors.blueAccent),
                  ))),
        );
      },
    );
  }
}
