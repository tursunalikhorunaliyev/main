import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/checkbox_border.dart';
import 'package:napt_sklad/controller/custome_selection_manager.dart';
import 'package:napt_sklad/controller/provider/data_grid_provider.dart';
import 'package:napt_sklad/model/datagrid_content.dart';
import 'package:napt_sklad/model/sell_dataGrid_source.dart';
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
        stackedHeaderRows: [
          StackedHeaderRow(
            cells: [
              StackedHeaderCell(
                columnNames: ["Sena", "Summa"],
                child: const ColoredBox(
                  color: Colors.black12,
                  child: Center(
                    child: Text(
                      "So skidkoy",
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
        columns: [
          GridColumn(
              maximumWidth: 40,
              columnName: " ",
              label: Checkbox(
                  value: false,
                  onChanged: (isChecked) {},
                  activeColor: Colors.transparent,
                  checkColor: Colors.black,
                  focusColor: Colors.amber,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  side: AlwaysActiveBorderSizeCheckbox())),
          GridColumn(
            minimumWidth: 208,
            columnName: "PN",
            label: const GridColumns(
              text: "Полное наимование",
            ),
          ),
          GridColumn(
            maximumWidth: 120,
            columnName: "Kolichestvo",
            label: const GridColumns(
              text: "Kolichestvo",
            ),
          ),
          GridColumn(
            maximumWidth: 120,
            columnName: "Sena",
            label: const GridColumns(
              text: "Sena",
            ),
          ),
          GridColumn(
            maximumWidth: 120,
            columnName: "Summa",
            label: const GridColumns(
              text: "Summa",
            ),
          ),
          GridColumn(
            columnName: "Srok God",
            label: const GridColumns(
              text: "Srok God",
            ),
          ),
          GridColumn(
            columnName: "Seriya",
            label: const GridColumns(
              text: "Seriya",
            ),
          ),
          GridColumn(
            columnName: "MX",
            label: const GridColumns(
              text: "MX",
            ),
          ),
          GridColumn(
            columnName: "IKPU",
            label: const GridColumns(
              text: "IKPU",
            ),
          ),
          GridColumn(
            columnName: "Mark",
            label: const GridColumns(
              text: "Mark",
            ),
          ),
        ],
      ),
    );
  }
}
