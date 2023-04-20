part of 'timer_cubit.dart';

abstract class TimerState {}

class TimerData extends TimerState {
  final String dateTime;

  TimerData(this.dateTime);
}
