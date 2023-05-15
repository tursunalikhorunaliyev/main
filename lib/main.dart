import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:napt_sklad/controller/blocs/bottom_selection/selector_blo_c_bloc.dart';
import 'package:napt_sklad/controller/blocs/check_buttons/check_buttons_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_panel/sell_panel_bloc.dart';
import 'package:napt_sklad/controller/blocs/top_selection/top_selection_bloc.dart';
import 'package:napt_sklad/controller/cubits/search_cubit/search_cubit_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/provider/focus_nodes.dart';
import 'package:napt_sklad/view/screens/main_panel.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  initializeDateFormatting();

  runApp(MultiProvider(
    providers: [
      BlocProvider(
        create: (context) => SelectorBloC(),
      ),
  
      BlocProvider<SellPanelBloc>(
        create: (context) => SellPanelBloc(),
      ),
      BlocProvider<CheckButtonsBloc>(
        create: (context) => CheckButtonsBloc(),
      ),
      ChangeNotifierProvider(
        create: (context) => PageController(),
      ),
      BlocProvider<SearchCubit>(
        create: (context) => SearchCubit(),
      ),
      BlocProvider<TabButtonIndexCubit>(
        create: (context) => TabButtonIndexCubit(),
      ),
      ChangeNotifierProvider(
        create: (context) => ScrollController(),
      ),
      ChangeNotifierProvider(
        create: (context) => FocusNodesProvider(
          focusNodeQtyPanel: FocusNode(),
          focusNodeSearchBox: FocusNode(),
          focusNodeBottomPanel: FocusNode(),
          focusNodeTopPanel: FocusNode(),
        ),
      ),
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
