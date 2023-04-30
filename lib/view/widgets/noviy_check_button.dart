import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/check_buttons/check_buttons_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_panel/sell_panel_bloc.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';
import 'package:napt_sklad/controller/data/model/check/check_creation_model.dart';
import 'package:napt_sklad/controller/data/model/check/created_check_model.dart';
import 'package:napt_sklad/controller/data/service/feathers.dart';
import 'package:provider/provider.dart';

class NoviyCheckButton extends StatelessWidget {
  const NoviyCheckButton({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = Provider.of<PageController>(context);
    final sellPanelBloc = BlocProvider.of<SellPanelBloc>(context);
    final checkPanelsBloc = BlocProvider.of<CheckButtonsBloc>(context);
    final tabButtonIndexCubit = BlocProvider.of<TabButtonIndexCubit>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: InkWell(
        onTap: () async {
          CreatedCheckData data = await FeathersService()
              .createCheckDoc(
            CheckCreationModel(
                createdAt: DateTime.now(), status: CheckStatus.draft),
          )
              .then((value) {
            sellPanelBloc.add(const SellPanelAdd());
            checkPanelsBloc.add(const CheckButtonsAdd());
            tabButtonIndexCubit.emit(
              TabButtonIndex(
                  slideIndex: checkPanelsBloc.state.customeTabButton.length),
            );
            pageController.animateToPage(
              sellPanelBloc.state.sellPanel.length,
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn,
            );
            return value;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          alignment: Alignment.center,
          color: const Color.fromARGB(255, 0, 151, 50),
          child: const Text(
            "Новый чек",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
