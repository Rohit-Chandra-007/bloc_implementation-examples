part of 'switch_bloc.dart';

@immutable
sealed class SwitchState extends Equatable {
  final bool isEnabled;

  const SwitchState(this.isEnabled);

  @override
  List<Object> get props => [isEnabled];
}

class SwitchInitial extends SwitchState {
  const SwitchInitial() : super(false);
}

class ToggleSwitchUpdate extends SwitchState {
  const ToggleSwitchUpdate(super.isEnabled);
}
