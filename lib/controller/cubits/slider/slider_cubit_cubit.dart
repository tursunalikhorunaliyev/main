import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'slider_cubit_state.dart';

class SliderCubit extends Cubit<SliderCubitData> {
  SliderCubit() : super(SliderCubitData(1, 0, PageController()));
}
