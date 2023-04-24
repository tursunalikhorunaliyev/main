import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:napt_sklad/controller/cubits/search_cubit/search_cubit_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/provider/data_grid_provider.dart';
import 'package:napt_sklad/view/screens/main_panel.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  initializeDateFormatting();

  runApp(MultiProvider(
    providers: [
      BlocProvider(
        create: (context) => TabButtonIndexDartCubit(),
      ),
      Provider(
        create: (context) => DataGridProvider(),
      ),
      BlocProvider(
        create: (context) => SearchCubit(),
      )
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainPanel(),
    ),
  ));
}
