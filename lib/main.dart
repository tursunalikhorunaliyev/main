import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/provider/data_grid_provider.dart';
import 'package:napt_sklad/view/screens/main_panel.dart';
import 'package:napt_sklad/view/screens/tes_window.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      BlocProvider(
        create: (context) => TabButtonIndexDartCubit(),
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
