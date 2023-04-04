import 'package:flutter/material.dart';
import 'package:napt_sklad/model/student_model.dart';
import 'package:napt_sklad/model/test_data.dart';
import 'package:napt_sklad/view/widgets/grid_columns.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class MainPanel extends StatelessWidget {
  MainPanel({super.key});

  List students = [
    Student(
        "Tursunali", "Xorunaliyev", 25, "IELTS 7", "Ferghana", "+998996931328"),
    Student(
        "Tursunali", "Xorunaliyev", 25, "IELTS 7", "Ferghana", "+998996931328"),
    Student(
        "Tursunali", "Xorunaliyev", 25, "IELTS 7", "Ferghana", "+998996931328"),
    Student(
        "Tursunali", "Xorunaliyev", 25, "IELTS 7", "Ferghana", "+998996931328"),
    Student(
        "Tursunali", "Xorunaliyev", 25, "IELTS 7", "Ferghana", "+998996931328"),
    Student(
        "Tursunali", "Xorunaliyev", 25, "IELTS 7", "Ferghana", "+998996931328"),
    Student(
        "Tursunali", "Xorunaliyev", 25, "IELTS 7", "Ferghana", "+998996931328"),
    Student(
        "Tursunali", "Xorunaliyev", 25, "IELTS 7", "Ferghana", "+998996931328"),
    Student(
        "Tursunali", "Xorunaliyev", 25, "IELTS 7", "Ferghana", "+998996931328"),
    Student(
        "Tursunali", "Xorunaliyev", 25, "IELTS 7", "Ferghana", "+998996931328"),
  ];
  TestDataGridSource testData = TestDataGridSource(students: []);

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
                                headerRowHeight: 50,
                                stackedHeaderRows: [
                                  StackedHeaderRow(cells: [
                                    StackedHeaderCell(
                                        columnNames: ["So skidkoy1"],
                                        child: const SizedBox()),
                                    StackedHeaderCell(
                                        columnNames: ["So skidkoy2"],
                                        child: const SizedBox()),
                                  ])
                                ],
                                columns: [
                                  GridColumn(
                                    minimumWidth: 200,
                                    columnName: "PN",
                                    label: const GridColumns(
                                        text: "Polnoe Naimovanie"),
                                  ),
                                  GridColumn(
                                    columnName: "PN",
                                    label:
                                        const GridColumns(text: "Kolichestvo"),
                                  ),
                                  GridColumn(
                                    columnName: "Sena",
                                    label: const GridColumns(text: "Sena"),
                                  ),
                                  GridColumn(
                                    columnName: "So skidkoy1",
                                    label:
                                        const GridColumns(text: "So skidkoy"),
                                  ),
                                  GridColumn(
                                    columnName: "Summa",
                                    label: const GridColumns(text: "Summa"),
                                  ),
                                  GridColumn(
                                    columnName: "So skidkoy2",
                                    label:
                                        const GridColumns(text: "So skidkoy"),
                                  ),
                                  GridColumn(
                                    columnName: "PN",
                                    label: const GridColumns(text: "Srok God"),
                                  ),
                                  GridColumn(
                                    columnName: "PN",
                                    label: const GridColumns(text: "Seriya"),
                                  ),
                                  GridColumn(
                                    columnName: "PN",
                                    label: const GridColumns(text: "MX"),
                                  ),
                                  GridColumn(
                                    columnName: "PN",
                                    label: const GridColumns(text: "IKPU"),
                                  ),
                                  GridColumn(
                                    columnName: "PN",
                                    label: const GridColumns(text: "Mark"),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Container(
                                color: Color.fromARGB(255, 183, 0, 86),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          color: Color.fromARGB(255, 255, 119, 7),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Color.fromARGB(255, 35, 0, 212),
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
