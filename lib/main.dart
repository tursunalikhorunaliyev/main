import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/provider/data_grid_provider.dart';
import 'package:napt_sklad/view/screens/main_panel.dart';
import 'package:napt_sklad/view/screens/tes_window.dart';
import 'package:provider/provider.dart';

import 'controller/cubits/checkbox/cubit/check_box_cubit_dart_cubit.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      Provider(
        create: (context) => DataGridProvider(),
      ),
    ],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPanel(),
    ),
  ));
}
