import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/timer/timer_cubit.dart';

class CustomeClock extends StatelessWidget {
  const CustomeClock({super.key});

  @override
  Widget build(BuildContext context) {
    final dateTimeCubit = TimerCubit();
    return BlocBuilder<TimerCubit, TimerState>(
      bloc: dateTimeCubit,
      builder: (context, state) {
        state as TimerData;
        log(state.dateTime.toString());

        return Text(
          state.dateTime,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }
}
