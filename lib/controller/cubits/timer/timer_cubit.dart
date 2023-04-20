import 'dart:async';

import 'package:bloc/bloc.dart';
part 'timer_state.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit()
      : super(TimerData(
            "${DateTime.now().toString().split(" ")[1].split(".")[0].split(":")[0]}:${DateTime.now().toString().split(" ")[1].split(".")[0].split(":")[1]}")) {
    changeTime();
  }

  changeTime() {
    List<String> hourAndMinute =
        DateTime.now().toString().split(" ")[1].split(".")[0].split(":");
    Timer.periodic(const Duration(minutes: 1), (timer) {
      emit(
        TimerData("${hourAndMinute[0]}:${hourAndMinute[1]}"),
      );
    });
  }
}
