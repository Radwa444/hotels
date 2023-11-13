part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}
class IncrementRoomsStats extends HomeState{
 int counter;
 IncrementRoomsStats(this.counter);
}
class DecreamentRoomsStats extends HomeState{
 int counter;
 DecreamentRoomsStats(this.counter);
}
class IncrementAdultsStats extends HomeState{
 int counter;
 IncrementAdultsStats(this.counter);
}
class DecreamentAdultsStats extends HomeState{
 int counter;
 DecreamentAdultsStats(this.counter);
}
class IncrementChildrenStats extends HomeState{
 int counter;
 IncrementChildrenStats(this.counter);
}
class DecreamentChildrenStats extends HomeState{
 int counter;
 DecreamentChildrenStats(this.counter);
}