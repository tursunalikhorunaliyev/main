import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'slider_cubit_state.dart';

class SliderCubit extends Cubit<SliderCubitData> {
  SliderCubit()
      : super(SliderCubitData(
            contentLength: 1,
            pageIndex: 0,
            pageController: PageController(),
            dateTime: DateTime.now()));
}
