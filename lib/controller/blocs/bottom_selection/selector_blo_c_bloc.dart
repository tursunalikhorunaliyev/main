import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'selector_blo_c_event.dart';
part 'selector_blo_c_state.dart';
//bottom selection is implemented
class SelectorBloC extends Bloc<SelectorBloCEvent, SelectorBloCState> {
  int length = 0;
  SelectorBloC({this.length = 0})
      : super(const SelectorBloCIndexState(currentIndex: -1)) {
    on<SelectorClickEvent>((event, emit) {
      emit(SelectorBloCIndexState(currentIndex: event.currentIndex));
    });
    on<SelectorKeyUpEvent>((event, emit) {
      if (event.currentIndex != 0) {
        emit(SelectorBloCIndexState(currentIndex: event.currentIndex - 1));
      }
    });
    on<SelectorKeyDownEvent>((event, emit) {
      if (event.currentIndex != length - 1) {
        emit(SelectorBloCIndexState(currentIndex: event.currentIndex + 1));
      }
    });
  }

  changeDataLength(int dataLength) {
    length = dataLength;
  }
}
