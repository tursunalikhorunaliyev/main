// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:napt_sklad/controller/cubits/slider/slider_cubit_cubit.dart';
import 'package:napt_sklad/view/widgets/noviy_check_button.dart';
import 'package:napt_sklad/view/widgets/tab_button.dart';
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
        if (state.checkTabs.length > 2) {
          state.pageController.animateToPage(
            state.dataGridPanels.length - 1,
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastLinearToSlowEaseIn,
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: PageView.builder(
                allowImplicitScrolling: true,
                controller: state.pageController,
                scrollDirection: Axis.horizontal,
                itemCount: state.dataGridPanels.length,
                itemBuilder: (context, index) {
                  return state.dataGridPanels[index];
                },
              ),
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: checkProvider.state.checkTabs.length,
                itemBuilder: (context, index) {
                  return index == checkProvider.state.checkTabs.length - 1
                      ? const NoviyCheckButton()
                      : CustomeTabButton(
                          buttonIndex: index,
                          creationTime: checkProvider.state.createdTimes[index],
                        );
                },
              ),
            )
          ],
        );
      },
    );
  }
}
