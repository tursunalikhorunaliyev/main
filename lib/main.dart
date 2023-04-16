import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/checkbox/check_box_cubit.dart';
import 'package:napt_sklad/controller/provider/data_grid_provider.dart';
import 'package:napt_sklad/view/screens/main_panel.dart';
import 'package:napt_sklad/view/screens/tes_window.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      Provider(
        create: (context) => CheckBoxCubit(),
      ),
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
