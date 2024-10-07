// states.dart
import 'package:equatable/equatable.dart';

sealed class CounterState extends Equatable {
  final int count;
  const CounterState(this.count);

  @override
  List<Object?> get props => [count];
}

class CounterInitial extends CounterState {
 const CounterInitial() : super(0);
}

class CounterUpdated extends CounterState {
 const CounterUpdated(super.count);
}
