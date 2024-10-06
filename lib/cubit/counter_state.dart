part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {
  final int counterValue;

  CounterInitial({this.counterValue = 0});
}
