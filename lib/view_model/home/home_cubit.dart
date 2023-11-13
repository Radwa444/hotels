import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  int counterRooms = 0;
  int counterAdults = 0;
  int counterChildren = 0;
  HomeCubit() : super(HomeInitial());
  void IncrementRooms() {
    if (counterRooms < 4) {
      emit(IncrementRoomsStats(counterRooms++));
    }
  }

  void DecrementRooms() {
    if (counterRooms > 0) {
      emit(DecreamentRoomsStats(counterRooms--));
    }
  }

  void IncrementAdults() {
    if (counterAdults < 4) {
      emit(IncrementAdultsStats(counterAdults++));
    }
  }

  void DecrementAdults() {
    if (counterAdults > 0) {
      emit(DecreamentAdultsStats(counterAdults--));
    }
  }

  void IncrementChildren() {
    if (counterChildren < 4) {
      emit(IncrementChildrenStats(counterChildren++));
    }
  }

  void DecrementChildren() {
    if (counterChildren > 0) {
      emit(DecreamentChildrenStats(counterChildren--));
    }
  }
}
