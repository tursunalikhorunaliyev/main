import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/provider/data_grid_provider.dart';
import 'package:napt_sklad/view/screens/main_panel.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(Provider(
    create: (context) => DataGridProvider(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPanel(),
    ),
  ));
}
