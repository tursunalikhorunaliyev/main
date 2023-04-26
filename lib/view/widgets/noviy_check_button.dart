import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/slider/slider_cubit_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';
import 'package:napt_sklad/view/widgets/check_tabs.dart';
import 'package:napt_sklad/view/widgets/tab_button.dart';
import 'package:provider/provider.dart';

class NoviyCheckButton extends StatelessWidget {
  const NoviyCheckButton({super.key});

  @override
  Widget build(BuildContext context) {
    final sliderCubit = Provider.of<SliderCubit>(context);
    final tabButtonCubit = BlocProvider.of<TabButtonIndexDartCubit>(context);
    return BlocBuilder<SliderCubit, SliderCubitState>(
      bloc: sliderCubit,
      builder: (context, state) {
        state as SliderCubitData;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: InkWell(
            onTap: () {
              final List<Widget> newTopPanels = state.dataGridPanels;
              final List<Widget> newcheckTabs = state.checkTabs;
              final List<DateTime> createdTimes = state.createdTimes;

              newTopPanels.add(const CheckTabs());
              log(newTopPanels.length.toString());
              newcheckTabs.insert(
                  newcheckTabs.length - 1,
                  CustomeTabButton(
                    buttonIndex: newcheckTabs.length - 1,
                    creationTime: DateTime.now(),
                  ));

              createdTimes.add(DateTime.now());

              final sliderCubitDataNew = SliderCubitData(
                dataGridPanels: newTopPanels,
                checkTabs: newcheckTabs,
                pageController: state.pageController,
                createdTimes: createdTimes,
              );

              sliderCubit.emit(
                sliderCubitDataNew,
              );
              tabButtonCubit
                  .emit(TabButtonIndex(slideIndex: newcheckTabs.length - 2));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 0, 151, 50),
              child: const Text(
                "Новый чек",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
