import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/bottom_selection/selector_blo_c_bloc.dart';
import 'package:napt_sklad/controller/blocs/check_buttons/check_buttons_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_panel/sell_panel_bloc.dart';
import 'package:napt_sklad/controller/provider/focus_nodes.dart';

import 'package:napt_sklad/view/widgets/bottom_table.dart';
import 'package:napt_sklad/view/widgets/top_panel.dart';
import 'package:napt_sklad/view/widgets/payment_panel.dart';
import 'package:napt_sklad/view/widgets/search_panel.dart';
import 'package:provider/provider.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final checkButtonsBloC = BlocProvider.of<CheckButtonsBloc>(context);
    final sellPanelBloc = BlocProvider.of<SellPanelBloc>(context);
    final focusNodes = Provider.of<FocusNodesProvider>(context);

    sellPanelBloc.add(const SellPanelOnLoad());
    checkButtonsBloC.add(CheckButtonOnLoad());
    ServicesBinding.instance.keyboard.addHandler((KeyEvent keyEvent) {
      if (RegExp("[0-9a-zA-Z]").hasMatch(
              keyEvent.character == null ? "" : keyEvent.character!) &&
          keyEvent is KeyDownEvent) {
        if (!focusNodes.focusNodeQtyPanel.hasFocus) {
          focusNodes.focusNodeSearchBox.requestFocus();
          return false;
        }
      }

      /* else if (keyEvent.logicalKey == LogicalKeyboardKey.arrowDown &&
          keyEvent is KeyDownEvent) {
        focusNodes.focusNodeSearchBox.unfocus();
        log("${selectorBloCIndexState.currentIndex}" "xxx");
/* 
        selectorBloC.add(SelectorKeyDownEvent(
            currentIndex: selectorBloCIndexState.currentIndex)); */

        return false;
      } */
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
