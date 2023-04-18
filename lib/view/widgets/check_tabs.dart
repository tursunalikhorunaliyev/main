import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/slider/slider_cubit_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';
import 'package:napt_sklad/view/widgets/data_grid_sell.dart';
import 'package:napt_sklad/view/widgets/pokupka_info.dart';
import 'package:provider/provider.dart';

class CheckTabs extends StatelessWidget {
  const CheckTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final sliderBloC = Provider.of<SliderCubit>(context);
    final tabButtonCubit =
        BlocProvider.of<TabButtonIndexDartCubit>(context, listen: false);
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 1,
          ),
          Flexible(
            flex: 10,
            child: Column(
              children: [
                Flexible(
                  flex: 20,
                  child: DataGridMainSellList(),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  const Flexible(
                    flex: 8,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: PokupokInfo(),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.pink.shade100,
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          final state = tabButtonCubit.state as TabButtonIndex;
                          log("-----------*--${state.slideIndex}--*--------");
                          final List<Widget> slidePanels =
                              sliderBloC.state.dataGridPanels;
                          final List<Widget> tabButtons =
                              sliderBloC.state.checkTabs;

                          final List<DateTime> createdTimes =
                              sliderBloC.state.createdTimes;

                          if (slidePanels.length != 1) {
                            slidePanels.removeAt(state.slideIndex);
                            tabButtons.removeAt(state.slideIndex);
                            createdTimes.removeAt(state.slideIndex);

                            sliderBloC.emit(
                              SliderCubitData(
                                  dataGridPanels: slidePanels,
                                  checkTabs: tabButtons,
                                  pageController:
                                      sliderBloC.state.pageController,
                                  createdTimes: createdTimes),
                            );
                            tabButtonCubit.emit(
                              TabButtonIndex(
                                slideIndex: state.slideIndex - 1,
                              ),
                            );
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/cancel.png",
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("Закрит чек")
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
