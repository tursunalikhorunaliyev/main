import 'package:cr_calendar/cr_calendar.dart';
import 'package:flutter/material.dart';
import 'package:napt_sklad/model/app_data.dart';
import 'package:napt_sklad/model/test_model.dart';
import 'package:napt_sklad/model/test_data.dart';
import 'package:napt_sklad/view/widgets/custome_input.dart';
import 'package:napt_sklad/view/widgets/data_grid_main_page.dart';
import 'package:napt_sklad/view/widgets/grid_columns.dart';
import 'package:napt_sklad/view/widgets/pokupka_info.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

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
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex: 14,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 5,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 8,
                              child: Column(
                                children: [
                                  Flexible(
                                    flex: 20,
                                    child: DataGridMainPage(),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        border: Border.symmetric(
                                            horizontal: BorderSide(
                                              color: Colors.black,
                                            ),
                                            vertical: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 215, 215, 215))),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
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
                      Flexible(
                        flex: 5,
                        child: Container(
                          color: const Color.fromARGB(255, 255, 119, 7),
                        ),
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
