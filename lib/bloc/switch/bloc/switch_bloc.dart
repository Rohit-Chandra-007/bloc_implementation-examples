import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  var logger = Logger();
  SwitchBloc() : super(const SwitchInitial()) {
    on<ToggleSwitchEvent>((event, emit) {
      final currentState = state;
      if (currentState is ToggleSwitchUpdate) {
        logger.e("toggled State:${currentState.isEnabled}");
        emit(ToggleSwitchUpdate(!currentState.isEnabled));
      } else if (currentState is SwitchInitial) {
        logger.e("initial State:${currentState.isEnabled}");
        emit(ToggleSwitchUpdate(!currentState.isEnabled));
      }
    });
  }
}
