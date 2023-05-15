import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';

part 'timer_state.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(nowToString()) {
    changeTime();
  }

  changeTime() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      final newDate = nowToString();
      if (state.date != newDate.date && state.time != newDate.time) {
        emit(newDate);
      }
    });
  }

  static TimerData nowToString() {
    final now = DateTime.now();
    return TimerData(DateFormat.MMMEd('ru').format(now), "${now.hour}:${now.minute}");
  }
}
