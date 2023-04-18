import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/checkbox_border.dart';
import 'package:napt_sklad/controller/provider/data_grid_provider.dart';
import 'package:napt_sklad/model/datagrid_content.dart';
import 'package:napt_sklad/model/sold_datagrid_source.dart';
import 'package:napt_sklad/view/widgets/grid_columns.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class DataGridMainSoldList extends StatelessWidget {
  DataGridMainSoldList({super.key});

  final testData =
      SoldDataGridSource(students: DataGridContent.testDataModelSold);

  @override
  Widget build(BuildContext context) {
    final dataGridProvider = Provider.of<DataGridProvider>(context);
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
        headerRowHeight: 50,
        headerGridLinesVisibility: GridLinesVisibility.both,
        columns: [
          GridColumn(
            minimumWidth: 523.5,
            columnName: "PN",
            label: const GridColumns(
              text: "Полное наимование",
            ),
          ),
          GridColumn(
            maximumWidth: 40,
            columnName: "UP",
            label: const GridColumns(
              text: "УП",
            ),
          ),
          GridColumn(
            maximumWidth: 120,
            columnName: "Sena",
            label: const GridColumns(
              text: "Цена",
            ),
          ),
          GridColumn(
            minimumWidth: 125,
            columnName: "Ostatok",
            label: const GridColumns(
              text: "Остаток",
            ),
          ),
          GridColumn(
            minimumWidth: 150,
            columnName: "Seriya",
            label: const GridColumns(
              text: "Серия",
            ),
          ),
          GridColumn(
            columnName: "Srok God",
            label: const GridColumns(
              text: "Срок год",
            ),
          ),
          GridColumn(
            maximumWidth: 80,
            columnName: "MX",
            label: const GridColumns(
              text: "МХ",
            ),
          ),
          GridColumn(
            maximumWidth: 60,
            columnName: "IKPU",
            label: const GridColumns(
              text: "ИКПУ",
            ),
          ),
          GridColumn(
            columnName: "Aksiya",
            label: const GridColumns(
              text: "Акция",
            ),
          ),
        ],
      ),
    );
  }
}
