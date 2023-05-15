import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/check_buttons/check_buttons_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_panel/sell_panel_bloc.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';
import 'package:provider/provider.dart';

class NoviyCheckButton extends StatelessWidget {
  const NoviyCheckButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: InkWell(
        onTap: () async {
          context.read<SellPanelBloc>().add(const SellPanelAdd());
          context.read<CheckButtonsBloc>().add(const CheckButtonsAdd());
          context.read<TabButtonIndexCubit>().emit(
                TabButtonIndex(
                    slideIndex: context
                        .read<CheckButtonsBloc>()
                        .state
                        .customeTabButton
                        .length),
              );
          context.read<PageController>().jumpToPage(
                context.read<SellPanelBloc>().state.sellPanel.length,
              );
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
