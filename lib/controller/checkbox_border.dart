import 'package:flutter/material.dart';

class AlwaysActiveBorderSizeCheckbox extends MaterialStateBorderSide {
  @override
  BorderSide? resolve(Set<MaterialState> states) {
    return const BorderSide(color: Colors.black, width: 1);
  }
}
