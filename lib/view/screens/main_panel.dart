import 'package:cr_calendar/cr_calendar.dart';
import 'package:flutter/material.dart';
import 'package:napt_sklad/model/app_data.dart';
import 'package:napt_sklad/model/test_model.dart';
import 'package:napt_sklad/model/test_data.dart';
import 'package:napt_sklad/view/widgets/custome_input.dart';
import 'package:napt_sklad/view/widgets/grid_columns.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class MainPanel extends StatelessWidget {
  MainPanel({super.key});

  TestDataGridSource testData =
      TestDataGridSource(students: AppData.testDataModel);

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
                              child: SfDataGrid(
                                source: testData,
                                headerRowHeight: 30,
                                headerGridLinesVisibility:
                                    GridLinesVisibility.both,
                                stackedHeaderRows: [
                                  StackedHeaderRow(cells: [
                                    StackedHeaderCell(
                                        columnNames: ["Sena", "Summa"],
                                        child: const Center(
                                            child: Text("So skidkoy"))),
                                  ])
                                ],
                                columns: [
                                  GridColumn(
                                    minimumWidth: 208,
                                    columnName: "PN",
                                    label: const GridColumns(
                                        text: "Polnoe Naimovanie"),
                                  ),
                                  GridColumn(
                                    maximumWidth: 200,
                                    columnName: "Kolichestvo",
                                    label:
                                        const GridColumns(text: "Kolichestvo"),
                                  ),
                                  GridColumn(
                                    columnName: "Sena",
                                    label: const GridColumns(text: "Sena"),
                                  ),
                                  GridColumn(
                                    columnName: "Summa",
                                    label: const GridColumns(text: "Summa"),
                                  ),
                                  GridColumn(
                                    columnName: "Srok God",
                                    label: const GridColumns(text: "Srok God"),
                                  ),
                                  GridColumn(
                                    columnName: "Seriya",
                                    label: const GridColumns(text: "Seriya"),
                                  ),
                                  GridColumn(
                                    columnName: "MX",
                                    label: const GridColumns(text: "MX"),
                                  ),
                                  GridColumn(
                                    columnName: "IKPU",
                                    label: const GridColumns(text: "IKPU"),
                                  ),
                                  GridColumn(
                                    columnName: "Mark",
                                    label: const GridColumns(text: "Mark"),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Column(
                                children: [
                                  const Flexible(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8),
                                      child: CustomeInput(),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: SfDateRangePicker()),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 3,
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
