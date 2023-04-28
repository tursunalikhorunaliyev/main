import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_panel/sell_panel_bloc.dart';
import 'package:napt_sklad/controller/cubits/sell_data/sell_data_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';
import 'package:napt_sklad/controller/data/model/check/created_check_model.dart';
import 'package:provider/provider.dart';

class CustomeTabButton extends StatelessWidget {
  final int buttonIndex;

  final CreatedCheckData createdCheckData;
  const CustomeTabButton({
    super.key,
    required this.buttonIndex,
    required this.createdCheckData,
  });

  @override
  Widget build(BuildContext context) {
    final tabButtonIndex = BlocProvider.of<TabButtonIndexCubit>(context);
    final pageController = Provider.of<PageController>(context);
    final sellPanelBloC = BlocProvider.of<SellPanelBloc>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: BlocBuilder<TabButtonIndexCubit, TabButtonIndexState>(
        bloc: tabButtonIndex,
        builder: (context, state) {
          return InkWell(
            onTap: () {
              tabButtonIndex.emit(
                TabButtonIndex(slideIndex: buttonIndex),
              );
              pageController.animateToPage(
                buttonIndex,
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastLinearToSlowEaseIn,
              );
              log(buttonIndex.toString());
              log(sellPanelBloC.state.sellPanel[buttonIndex].sellDataCubit
                  .toString());
            },
            child: Container(
              width: 120,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: buttonIndex == state.slideIndex ? Colors.amber : null,
                border: const Border.symmetric(
                    vertical: BorderSide(
                  color: Colors.black,
                  width: 1,
                )),
              ),
              child: Text(
                createdCheckData.createdAt
                    .toString()
                    .split(" ")[1]
                    .split(".")[0],
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
