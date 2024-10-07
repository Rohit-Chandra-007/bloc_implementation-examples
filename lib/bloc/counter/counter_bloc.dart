import 'package:counter_bloc_app/bloc/counter/events.dart';
import 'package:counter_bloc_app/bloc/counter/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial()) {
    on<Increment>((event, emit) {
      final currentState = state;
      final newCount =
          (currentState is CounterUpdated) ? currentState.count + 1 : 1;
      emit(CounterUpdated(newCount));
    });

    on<Decrement>((event, emit) {
      final currentState = state;
      if (currentState is CounterUpdated && currentState.count > 0) {
        emit(
          CounterUpdated(currentState.count - 1),
        );
      }
    });
  }
}
