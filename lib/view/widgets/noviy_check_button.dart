import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/slider/slider_cubit_cubit.dart';
import 'package:napt_sklad/view/widgets/check_tabs.dart';
import 'package:provider/provider.dart';

class NoviyCheckButton extends StatelessWidget {
  const NoviyCheckButton({super.key});

  @override
  Widget build(BuildContext context) {
    final sliderCubit = Provider.of<SliderCubit>(context);
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

              newTopPanels.add(const CheckTabs());
              newcheckTabs.add(
                Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 0, 151, 50),
                  child: Text(
                    DateTime.now().toString().split(" ")[1].split(".")[0],
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              );
              final sliderCubitDataNew = SliderCubitData(
                dataGridPanels: newTopPanels,
                checkTabs: newcheckTabs,
                pageController: state.pageController,
              );

              sliderCubit.emit(
                sliderCubitDataNew,
              );
            },
            child: Container(
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 0, 151, 50),
              child: const Text(
                "Noviy check",
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
