import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:napt_sklad/bottom_table.dart';
import 'package:napt_sklad/top_table.dart';
import 'package:napt_sklad/view/widgets/check_tabs_panel.dart.dart';
import 'package:napt_sklad/view/widgets/payment_panel.dart';
import 'package:napt_sklad/view/widgets/pokupka_info.dart';
import 'package:napt_sklad/view/widgets/search_panel.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size.width - 310;
    log(s.toString());
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Flexible(
                  flex: 5,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 310,
                        child: const TopTable(),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        width: 250,
                        //color: Colors.pink.shade900,
                        child: const PokupokInfo(),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 45,
                  color: const Color.fromARGB(255, 7, 255, 168),
                ),
                Container(
                  height: 40,
                  color: Colors.deepOrangeAccent,
                  child: const SearchPanel(),
                ),
                Flexible(
                  flex: 4,
                  child: Container(
                    color: Colors.deepOrange,
                    child: const BottomTable(),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 60,
            //color: Colors.red,
            child: const PaymentPanel(),
          )
        ],
      ), /* Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            width: 60,
            child: Center(
              child: PaymentPanel(),
            ),
          ),
          // const MenuBarTop(),
          /* Flexible(
            flex: 5,
            child: Row(
              children: [
                Flexible(
                  flex: 16,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 28,
                        child: Provider(
                          create: (context) => SliderCubit(),
                          child: const CheckTabsPanel(),
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                        child: SearchPanel(),
                      ),
                      Flexible(
                        flex: 20,
                        child: Padding(
                            padding: const EdgeInsets.only(
                              left: 1,
                            ),
                            child: Expanded(child: DataGridMainSoldList())),
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(
                  thickness: 1,
                  width: 0,
                  indent: 1,
                  endIndent: 1,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 60,
                  child: Center(
                    child: PaymentPanel(),
                  ),
                ),
              ],
            ),
          ), */
        ],
      ), */
    );
  }
}
