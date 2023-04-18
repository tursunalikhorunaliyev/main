import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/slider/slider_cubit_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';

class CustomeTabButton extends StatelessWidget {
  final int buttonIndex;
  final DateTime creationTime;
  const CustomeTabButton(
      {super.key, required this.buttonIndex, required this.creationTime});

  @override
  Widget build(BuildContext context) {
    final tabButtonCubit = BlocProvider.of<TabButtonIndexDartCubit>(context);
    final slideCubit = BlocProvider.of<SliderCubit>(context);
    return BlocBuilder<TabButtonIndexDartCubit, TabButtonIndexDartState>(
      bloc: tabButtonCubit,
      builder: (context, state) {
        state as TabButtonIndex;
        return InkWell(
          onTap: () {
            tabButtonCubit.emit(
              TabButtonIndex(
                buttonIndex: buttonIndex,
              ),
            );

            slideCubit.state.pageController.animateToPage(
              buttonIndex,
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn,
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: buttonIndex == state.buttonIndex
                    ? Colors.pink.shade100
                    : null,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Text(
                creationTime.toString().split(" ")[1].split(".")[0],
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
