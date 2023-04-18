// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:napt_sklad/controller/cubits/slider/slider_cubit_cubit.dart';
import 'package:napt_sklad/view/widgets/check_tabs.dart';
import 'package:provider/provider.dart';

class CheckTabsPanel extends StatelessWidget {
  const CheckTabsPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final checkProvider = Provider.of<SliderCubit>(context);

    return BlocBuilder<SliderCubit, SliderCubitData>(
      bloc: checkProvider,
      builder: (context, state) {
        if (state.checkTabs.length > 1) {
          state.pageController.animateToPage(
            state.checkTabs.length - 1,
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastLinearToSlowEaseIn,
          );
        }
        return Column(children: [
          Flexible(
            child: PageView(
              allowImplicitScrolling: true,
              controller: state.pageController,
              scrollDirection: Axis.horizontal,
              children: state.dataGridPanels,
            ),
          ),
          SizedBox(
            height: 30,
            child: Row(
              children: state.checkTabs,
            ),
          )
        ]);
      },
    );
  }
}
