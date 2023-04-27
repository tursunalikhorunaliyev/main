// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/sell_panel/sell_panel_cubit.dart';
import 'package:napt_sklad/view/widgets/sell_panel.dart';

class TopPanel extends StatelessWidget {
  const TopPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sellPanelCubit = SellPanelCubit();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: BlocBuilder<SellPanelCubit, SellPanelState>(
            bloc: sellPanelCubit,
            builder: (context, state) {
              state as SellPanelData;
              return PageView.builder(
                itemCount: state.sellPanel.length,
                itemBuilder: (context, index) {
                  return state.sellPanel[index];
                },
              );
            },
          ),
        ),
        SizedBox(
          height: 40,
          child: SizedBox(
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  sellPanelCubit.addItem();
                },
                child: const Text("add")),
          ),
        )
      ],
    );
  }
}
