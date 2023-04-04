import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:napt_sklad/view/screens/main_panel.dart';

void main(List<String> args) {
  runApp(const FluentApp(
    debugShowCheckedModeBanner: false,
    home: MainPanel(),
  ));
}
