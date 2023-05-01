import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/bottom_selection/selector_blo_c_bloc.dart';
import 'package:napt_sklad/controller/data/connection_data.dart';
import 'package:napt_sklad/controller/data/model/search/search_data.dart';
import 'package:napt_sklad/view/widgets/bottom_table.dart';
import 'package:napt_sklad/view/widgets/top_panel.dart';
import 'package:napt_sklad/view/widgets/payment_panel.dart';
import 'package:napt_sklad/view/widgets/search_panel.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final selectorForTop = SelectorBloC();
    final selectorForBottom = SelectorBloC();
    ServicesBinding.instance.keyboard.addHandler((KeyEvent keyEvent) {
      final key = keyEvent.logicalKey.keyLabel;

      if (keyEvent is KeyDownEvent) {
        print("Key down: $key");
      } else if (keyEvent is KeyUpEvent) {
        print("Key up: $key");
      } else if (keyEvent is KeyRepeatEvent) {
        print("Key repeat: $key");
      }

      return false;
    });
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Flexible(
                  flex: 5,
                  child: MultiBlocProvider(
                    providers: [
                      BlocProvider<SelectorBloC>(
                        create: (context) => selectorForTop,
                      ),
                    ],
                    child: const TopPanel(),
                  ),
                ),
                const SizedBox(
                  height: 40,
                  child: SearchPanel(),
                ),
                Flexible(
                  flex: 4,
                  child: BlocProvider(
                    create: (context) => selectorForBottom,
                    child: const BottomTable(),
                  ),
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
