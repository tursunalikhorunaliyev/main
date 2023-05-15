part of 'timer_cubit.dart';

abstract class TimerState {
  get date => null;
  get time => null;
}

class TimerData extends TimerState {
  @override
  final String date;

  @override
  final String time;

  TimerData(this.date, this.time);
}
