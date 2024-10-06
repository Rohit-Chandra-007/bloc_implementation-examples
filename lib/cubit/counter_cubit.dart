import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  /// Add 1 to the current state.
  void increment() {
    if (state is CounterInitial) {
      final currentValue = (state as CounterInitial).counterValue;
      if(currentValue<100) {
        emit(CounterInitial(counterValue: currentValue + 1));
      }
    }
  }
  /// Subtract 1 from the current state.
  void decrement() {
    if (state is CounterInitial) {
      final currentValue = (state as CounterInitial).counterValue;
      if(currentValue==0){
        return;
      }
      emit(CounterInitial(counterValue: currentValue - 1));

    }
  }

}
