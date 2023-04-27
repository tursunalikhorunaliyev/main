import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'selector_blo_c_event.dart';
part 'selector_blo_c_state.dart';

class SelectorBloC extends Bloc<SelectorBloCEvent, SelectorBloCState> {
  int length = 0;
  SelectorBloC({this.length = 0})
      : super(SelectorBloCIndexState(currentIndex: 0)) {
    on<SelectorClickEvent>((event, emit) {
      emit(SelectorBloCIndexState(currentIndex: event.currentIndex));
    });
    on<SelectorKeyUpEvent>((event, emit) {
      if (event.currentIndex != 0) {
        emit(SelectorBloCIndexState(currentIndex: event.currentIndex - 1));
        log((event.currentIndex - 1).toString());
      }
    });
    on<SelectorKeyDownEvent>((event, emit) {
      log(length.toString());
      if (event.currentIndex != length - 1) {
        emit(SelectorBloCIndexState(currentIndex: event.currentIndex + 1));
        log((event.currentIndex + 1).toString());
      }
    });
  }

  changeDataLength(int dataLength) {
    length = dataLength;
  }
}
