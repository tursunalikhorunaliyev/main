import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:napt_sklad/controller/blocs/bottom_selection/selector_blo_c_bloc.dart';
import 'package:napt_sklad/controller/blocs/check_buttons/check_buttons_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_data/sell_data_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_panel/sell_panel_bloc.dart';
import 'package:napt_sklad/controller/blocs/top_selection/top_selection_bloc.dart';
import 'package:napt_sklad/controller/cubits/search_cubit/search_cubit_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';
import 'package:napt_sklad/controller/provider/focus_nodes.dart';

import 'package:napt_sklad/view/widgets/bottom_table.dart';
import 'package:napt_sklad/view/widgets/qty_panel.dart';
import 'package:napt_sklad/view/widgets/top_panel.dart';
import 'package:napt_sklad/view/widgets/payment_panel.dart';
import 'package:napt_sklad/view/widgets/search_panel.dart';
import 'package:provider/provider.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final focusNodes = Provider.of<FocusNodesProvider>(context);

    context.read<SellPanelBloc>().add(const SellPanelOnLoad());
    context.read<CheckButtonsBloc>().add(CheckButtonOnLoad());
    //

    ServicesBinding.instance.keyboard.addHandler((KeyEvent keyEvent) {
      if ((RegExp("[0-9a-zA-Zа-яА-Я]").hasMatch(keyEvent.character ?? "")) &&
          keyEvent is KeyDownEvent) {
        if (!focusNodes.focusNodeQtyPanel.hasFocus) {
          focusNodes.focusNodeSearchBox.requestFocus();
          return false;
        }
      } else if (keyEvent.logicalKey == LogicalKeyboardKey.arrowUp &&
          keyEvent is KeyDownEvent &&
          !focusNodes.focusNodeBottomPanel.hasFocus) {
        context.read<SellPanelBloc>()
            .state
            .sellPanel[context.read<TabButtonIndexCubit>().state.slideIndex]
            .topSelectionBloc
            .add(TopSelectionUp());
      } else if (keyEvent.logicalKey == LogicalKeyboardKey.arrowDown &&
          keyEvent is KeyDownEvent &&
          !focusNodes.focusNodeBottomPanel.hasFocus) {
        context.read<SellPanelBloc>()
            .state
            .sellPanel[context.read<TabButtonIndexCubit>().state.slideIndex]
            .topSelectionBloc
            .add(TopSelectionDown());
      } else if (keyEvent.logicalKey == LogicalKeyboardKey.enter &&
          keyEvent is KeyDownEvent) {
        if (focusNodes.focusNodeBottomPanel.hasFocus) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: QtyPanel(
                    data: context
                        .read<SearchCubit>()
                        .state
                        .searchData!
                        .data[context.read<SelectorBloC>().state.currentIndex],
                    ostatok: 20,
                    sena: "25000",
                    seriya: "12345",
                    srokGod: "01.02.2025",
                  ),
                );
              });
        }
      } else if (keyEvent.logicalKey == LogicalKeyboardKey.backspace &&
          keyEvent is KeyDownEvent) {
        if (!focusNodes.focusNodeQtyPanel.hasFocus) {
          focusNodes.focusNodeSearchBox.requestFocus();
          return false;
        }
      } else if (keyEvent.logicalKey == LogicalKeyboardKey.arrowLeft &&
          keyEvent is KeyDownEvent) {
        focusNodes.focusNodeBottomPanel.unfocus();
        if (context.read<TabButtonIndexCubit>().state.slideIndex != 0) {
          context.read<TabButtonIndexCubit>().emit(
                TabButtonIndex(
                    slideIndex:
                        context.read<TabButtonIndexCubit>().state.slideIndex -
                            1),
              );
          context.read<PageController>().jumpToPage(
                context.read<TabButtonIndexCubit>().state.slideIndex,
              );

          if (context.read<CheckButtonsBloc>()
                  .state
                  .customeTabButton[
                      context.read<TabButtonIndexCubit>().state.slideIndex]
                  .docData!
                  .uuid !=
              null) {
            context
                .read<SellPanelBloc>()
                .state
                .sellPanel[context.read<TabButtonIndexCubit>().state.slideIndex]
                .sellDataBloc
                .add(SellDataFromServer(
                    docId: context
                        .read<CheckButtonsBloc>()
                        .state
                        .customeTabButton[context
                            .read<TabButtonIndexCubit>()
                            .state
                            .slideIndex]
                        .docData!
                        .uuid!));
          }
        }
      } else if (keyEvent.logicalKey == LogicalKeyboardKey.arrowRight &&
          keyEvent is KeyDownEvent) {
        focusNodes.focusNodeBottomPanel.unfocus();

        if (context.read<TabButtonIndexCubit>().state.slideIndex !=
            context.read<CheckButtonsBloc>().state.customeTabButton.length -
                1) {
          context.read<TabButtonIndexCubit>().emit(
                TabButtonIndex(
                    slideIndex:
                        context.read<TabButtonIndexCubit>().state.slideIndex +
                            1),
              );
          context.read<PageController>().jumpToPage(
                context.read<TabButtonIndexCubit>().state.slideIndex,
              );

          if (context.read<CheckButtonsBloc>()
                  .state
                  .customeTabButton[
                      context.read<TabButtonIndexCubit>().state.slideIndex]
                  .docData!
                  .uuid !=
              null) {
            context
                .read<SellPanelBloc>()
                .state
                .sellPanel[context.read<TabButtonIndexCubit>().state.slideIndex]
                .sellDataBloc
                .add(SellDataFromServer(
                    docId: context
                        .read<CheckButtonsBloc>()
                        .state
                        .customeTabButton[context
                            .read<TabButtonIndexCubit>()
                            .state
                            .slideIndex]
                        .docData!
                        .uuid!));
          }
        }
      }
      return false;
    });
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: const [
                Flexible(
                  flex: 5,
                  child: TopPanel(),
                ),
                SizedBox(
                  height: 40,
                  child: SearchPanel(),
                ),
                Flexible(
                  flex: 4,
                  child: BottomTable(),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 60,
            child: PaymentPanel(),
          )
        ],
      ),
    );
  }
}
