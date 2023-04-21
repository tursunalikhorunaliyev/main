import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/slider/slider_cubit_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';

class CustomeTabButton extends StatelessWidget {
  final int buttonIndex;
  final DateTime creationTime;
  const CustomeTabButton({super.key, required this.buttonIndex, required this.creationTime});

  @override
  Widget build(BuildContext context) {
    final tabButtonCubit = BlocProvider.of<TabButtonIndexDartCubit>(context);
    final slideCubit = BlocProvider.of<SliderCubit>(context);
    return InkWell(
      onTap: () {
        log(buttonIndex.toString());
        tabButtonCubit.emit(
          TabButtonIndex(
            slideIndex: buttonIndex,
          ),
        );
        slideCubit.state.pageController.animateToPage(
          buttonIndex,
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastLinearToSlowEaseIn,
        );
      },
      child: BlocBuilder<TabButtonIndexDartCubit, TabButtonIndexDartState>(
        bloc: tabButtonCubit,
        builder: (context, state) {
          state as TabButtonIndex;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: buttonIndex == state.slideIndex || (buttonIndex == 0 && state.slideIndex == 0)
                    ? Colors.pink.shade100
                    : const Color.fromARGB(31, 214, 214, 214),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Text(
                // buttonIndex == 0
                //     ? "[пустой]"
                //     :
                creationTime.toString().split(" ")[1].split(".")[0],
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
