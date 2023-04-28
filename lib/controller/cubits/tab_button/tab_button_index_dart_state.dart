import 'package:flutter/material.dart';

abstract class TabButtonIndexState {
  final int slideIndex;

  TabButtonIndexState({required this.slideIndex});
}

class TabButtonIndex extends TabButtonIndexState {
  TabButtonIndex({required super.slideIndex});
}
