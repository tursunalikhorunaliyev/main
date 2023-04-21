import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/provider/data_grid_provider.dart';
import 'package:napt_sklad/service/datagrid_content.dart';
import 'package:napt_sklad/service/sell_datagrid_source.dart';
import 'package:napt_sklad/view/widgets/grid_columns.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class DataGridMainSellList extends StatelessWidget {
  DataGridMainSellList({super.key});

  final testData =
      SellDataGridSource(students: DataGridContent.testDataModelSell);

  @override
  Widget build(BuildContext context) {
    final dataGridProvider = Provider.of<DataGridProvider>(context);
    final media = MediaQuery.of(context).size;
    return SfDataGridTheme(
      data: SfDataGridThemeData(
        selectionColor: Colors.amber,
        rowHoverColor: Colors.blue,
        currentCellStyle: const DataGridCurrentCellStyle(
          borderColor: Colors.black,
          borderWidth: 1,
        ),
        gridLineColor: Colors.black,
        headerColor: const Color.fromARGB(13, 0, 0, 0),
        headerHoverColor: Colors.blue,
      ),
      child: SfDataGrid(
        controller: dataGridProvider.dataGridController,
        selectionMode: SelectionMode.single,
        navigationMode: GridNavigationMode.row,
        rowHeight: 32,
        source: testData,
        gridLinesVisibility: GridLinesVisibility.both,
        headerRowHeight: 40,
        headerGridLinesVisibility: GridLinesVisibility.both,
        stackedHeaderRows: [],
        columns: [
          GridColumn(
            minimumWidth: 240,
            // media.width == 3840
            //     ? 2668
            //     : media.width == 3456
            //         ? 2285
            //         : media.width == 2560
            //             ? 1388
            //             : media.width == 1920
            //                 ? 748
            //                 : media.width == 1280
            //                     ? 108
            //                     : 268,
            columnName: "PN",
            label: const GridColumns(
              text: "Полное наимование",
            ),
          ),
          GridColumn(
            maximumWidth: 80,
            columnName: "Kolichestvo",
            label: const GridColumns(
              text: "Кол-во",
            ),
          ),
          GridColumn(
            minimumWidth: 120,
            columnName: "Sena",
            label: const GridColumns(
              text: "Цена",
            ),
          ),
          GridColumn(
            minimumWidth: 120,
            columnName: "Summa",
            label: const GridColumns(
              text: "Сумма",
            ),
          ),
          GridColumn(
            columnName: "Srok God",
            label: const GridColumns(
              text: "Срок год",
            ),
          ),
          GridColumn(
            columnName: "Seriya",
            label: const GridColumns(
              text: "Серия",
            ),
          ),
          GridColumn(
            maximumWidth: 30,
            columnName: "MX",
            label: const GridColumns(
              text: "МХ",
            ),
          ),
          GridColumn(
            columnName: "IKPU",
            label: const GridColumns(
              text: "ИКПУ",
            ),
          ),
          GridColumn(
            columnName: "Mark",
            label: const GridColumns(
              text: "Марк",
            ),
          ),
        ],
      ),
    );
  }
}
