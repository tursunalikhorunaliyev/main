import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/slider/slider_cubit_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';
import 'package:napt_sklad/view/widgets/custome_clock.dart';
import 'package:provider/provider.dart';

class PokupokInfo extends StatelessWidget {
  const PokupokInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final sliderBloC = Provider.of<SliderCubit>(context);
    final tabButtonCubit =
        BlocProvider.of<TabButtonIndexDartCubit>(context, listen: false);
    return ColoredBox(
      color: Color.fromARGB(255, 135, 33, 243),
      child: SizedBox(
        width: 250,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              const CustomeClock(),
              Container(
                alignment: Alignment.topLeft,
                child: const Text("Сумма"),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: const Text(
                  "0.00",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text("Скидка"),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: const Text(
                  "0.00",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "К оплата",
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: const Text(
                  "0.00",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(80, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: const Icon(Icons.print_sharp),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 5,
                    ),
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
                          vertical: 5,
                          horizontal: 20,
                        ),
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
