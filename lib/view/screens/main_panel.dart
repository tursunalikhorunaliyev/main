import 'package:flutter/material.dart';
import 'package:napt_sklad/view/widgets/custome_input.dart';
import 'package:napt_sklad/view/widgets/custome_input_date_picker.dart';
import 'package:napt_sklad/view/widgets/data_grid_sell.dart';
import 'package:napt_sklad/view/widgets/data_grid_sold.dart';
import 'package:napt_sklad/view/widgets/footer_widget.dart';
import 'package:napt_sklad/view/widgets/pokupka_info.dart';
import 'package:napt_sklad/view/widgets/search_panel.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PlutoMenuBar(height: 30, menus: [
            PlutoMenuItem(title: "title"),
            PlutoMenuItem(title: "title"),
            PlutoMenuItem(title: "title"),
            PlutoMenuItem(title: "title"),
            PlutoMenuItem(title: "title"),
            PlutoMenuItem(title: "title"),
          ]),
          Flexible(
            flex: 5,
            child: Row(
              children: [
                Flexible(
                  flex: 14,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 28,
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 1,
                            ),
                            Flexible(
                              flex: 10,
                              child: Column(
                                children: [
                                  Flexible(
                                    flex: 20,
                                    child: DataGridMainSellList(),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 1),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            top:
                                                BorderSide(color: Colors.black),
                                          ),
                                        ),
                                        child: const DataGridFooter(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            /* const VerticalDivider(
                              indent: 0,
                              endIndent: 0,
                              thickness: 1,
                              color: Color.fromARGB(255, 32, 32, 32),
                            ), */
                            Flexible(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Column(
                                  children: [
                                    Flexible(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          const Flexible(
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                right: 8,
                                              ),
                                              child: CustomeInput(
                                                hintText: "0",
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 2,
                                          ),
                                          Flexible(
                                            flex: 2,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8),
                                              child: CustomeInput(
                                                hintText: "01.12.2022",
                                                suffix: Image.asset(
                                                  "assets/calendar.png",
                                                  width: 32,
                                                  height: 32,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    const Flexible(
                                      flex: 8,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: PokupokInfo()),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/cancel.png",
                                            width: 20,
                                            height: 20,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const InkWell(
                                              child: Text("Zakrit chek"))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Flexible(
                        flex: 2,
                        child: SearchPanel(),
                      ),
                      Flexible(
                        flex: 20,
                        child: Padding(
                            padding: const EdgeInsets.only(
                              left: 1,
                            ),
                            child: DataGridMainSoldList()),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: const Color.fromARGB(255, 35, 0, 212),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
