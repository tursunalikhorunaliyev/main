// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/check_button/check_button_panel_cubit.dart';
import 'package:napt_sklad/controller/cubits/sell_panel/sell_panel_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';
import 'package:napt_sklad/view/widgets/noviy_check_button.dart';
import 'package:napt_sklad/view/widgets/sell_panel.dart';
import 'package:napt_sklad/view/widgets/tab_button.dart';
import 'package:provider/provider.dart';

class TopPanel extends StatelessWidget {
  const TopPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sellPanelCubit = BlocProvider.of<SellPanelCubit>(context);
    final pageController = PageController();
    final checkButtonCubit = BlocProvider.of<CheckButtonPanelCubit>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: BlocBuilder<SellPanelCubit, SellPanelState>(
            bloc: sellPanelCubit,
            builder: (context, state) {
              state as SellPanelData;
              return Provider(
                create: (context) => pageController,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: state.sellPanel.length,
                  itemBuilder: (context, index) {
                    return state.sellPanel[index];
                  },
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 40,
          child: BlocBuilder<CheckButtonPanelCubit, CheckButtonPanelState>(
            bloc: checkButtonCubit,
            builder: (context, state) {
              state as CheckButtonPanelData;
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                addAutomaticKeepAlives: true,
                itemCount: state.customeTabButton.length + 1,
                itemBuilder: (context, index) {
                  return index == state.customeTabButton.length
                      ? const NoviyCheckButton()
                      : state.customeTabButton[index];
                },
              );
            },
          ),
        )
      ],
    );
  }
}
