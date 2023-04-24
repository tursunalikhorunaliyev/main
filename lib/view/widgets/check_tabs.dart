import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/slider/slider_cubit_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';
import 'package:napt_sklad/service/datagrid_content.dart';
import 'package:napt_sklad/view/widgets/pokupka_info.dart';
import 'package:napt_sklad/view/widgets/top_table.dart';
import 'package:provider/provider.dart';

class CheckTabs extends StatelessWidget {
  const CheckTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TopTable(sellDataModel: DataGridContent.testDataModelSell),
        ),
        const SizedBox(
          width: 250,
          child: PokupokInfo(),
        ),
        /* SizedBox(
          width: 210,
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
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 12,
                ),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // fixedSize: const Size(80, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Icon(Icons.print_sharp),
                    ),
                    InkWell(
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
                                pageController: sliderBloC.state.pageController,
                                createdTimes: createdTimes),
                          );
                          tabButtonCubit.emit(
                            TabButtonIndex(
                              slideIndex: state.slideIndex - 1,
                            ),
                          );
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.pink.shade100,
                          borderRadius: BorderRadius.circular(20),
                        ),
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
                            const Text("Закрыть")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ), */
      ],
    );
  }
}
