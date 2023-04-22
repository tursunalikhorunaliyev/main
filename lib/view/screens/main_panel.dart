import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/cubits/slider/slider_cubit_cubit.dart';
import 'package:napt_sklad/service/datagrid_content.dart';
import 'package:napt_sklad/view/widgets/bottom_table.dart';
import 'package:napt_sklad/view/widgets/check_tabs_panel.dart.dart';
import 'package:napt_sklad/view/widgets/payment_panel.dart';
import 'package:napt_sklad/view/widgets/search_panel.dart';
import 'package:provider/provider.dart';

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
                    child: Provider(
                        create: (context) => SliderCubit(),
                        child: const CheckTabsPanel())),
                Container(
                  height: 40,
                  color: Colors.deepOrangeAccent,
                  child: const SearchPanel(),
                ),
                Flexible(
                  flex: 4,
                  child: Container(
                    color: Colors.deepOrange,
                    child: BottomTable(
                        soldDataModel: DataGridContent.testDataModelSold),
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
