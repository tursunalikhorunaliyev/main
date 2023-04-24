import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/bloc/selector_blo_c_bloc.dart';
import 'package:napt_sklad/controller/cubits/slider/slider_cubit_cubit.dart';
import 'package:napt_sklad/service/datagrid_content.dart';
import 'package:napt_sklad/view/widgets/bottom_table.dart';
import 'package:napt_sklad/view/widgets/check_tabs_panel.dart.dart';
import 'package:napt_sklad/view/widgets/payment_panel.dart';
import 'package:napt_sklad/view/widgets/search_panel.dart';
import 'package:provider/provider.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Flexible(
                    flex: 5,
                    child: Provider(
                        create: (context) => SliderCubit(),
                        child: const CheckTabsPanel())),
                Container(
                  height: 40,
                  color: Colors.deepOrangeAccent,
                  child: const SearchPanel(),
                ),
                Flexible(
                  flex: 4,
                  child: Container(
                    color: Colors.deepOrange,
                    child: BlocProvider(
                      create: (context) => SelectorBloC(),
                      child: const BottomTable(),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 60,
            child: PaymentPanel(),
          )
        ],
      ),
    );
  }
}
