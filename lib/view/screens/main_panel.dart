import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/cubits/slider/slider_cubit_cubit.dart';
import 'package:napt_sklad/view/widgets/check_tabs_panel.dart.dart';
import 'package:napt_sklad/view/widgets/data_grid_sold.dart';
import 'package:napt_sklad/view/widgets/payment_panel.dart';
import 'package:napt_sklad/view/widgets/search_panel.dart';
import 'package:provider/provider.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const MenuBarTop(),
          Flexible(
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
          ),
        ],
      ),
    );
  }
}
