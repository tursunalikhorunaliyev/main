import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:napt_sklad/controller/checkbox_border.dart';
import 'package:napt_sklad/model/sell_model_test.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class SellDataGridSource extends DataGridSource {
  List<DataGridRow> _studentsGrid = [];

  final List<SellDataModel> students;

  SellDataGridSource({required this.students}) {
    _studentsGrid = students
        .map(
          (e) => DataGridRow(
            cells: [
              DataGridCell<Widget>(
                columnName: " ",
                value: e.checkbox,
              ),
              DataGridCell<String>(
                columnName: "PN",
                value: e.polnoeNaimovaniye,
              ),
              DataGridCell<int>(
                columnName: "Kolichestvo",
                value: e.kolichestvo,
              ),
              DataGridCell<int>(
                columnName: "Sena",
                value: e.sena,
              ),
              DataGridCell<int>(
                columnName: "Summa",
                value: e.summa,
              ),
              DataGridCell<String>(
                columnName: "Srok god",
                value: e.srokGod,
              ),
              DataGridCell<String>(
                columnName: "Seriya",
                value: e.seriya,
              ),
              DataGridCell<String>(
                columnName: "MX",
                value: e.mx,
              ),
              DataGridCell<String>(
                columnName: "IKPU",
                value: e.ikpu,
              ),
              DataGridCell<String>(
                columnName: "Mark",
                value: e.mark,
              ),
            ],
          ),
        )
        .toList();
  }

  @override
  List<DataGridRow> get rows => _studentsGrid;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map((e) {
      return columContent(e);
    }).toList());
  }

  Widget columContent(DataGridCell<dynamic> e) {
    if (e.columnName == "IKPU") {
      return Padding(
        padding: const EdgeInsets.only(right: 3),
        child: Align(
          alignment: Alignment.centerRight,
          child: e.columnName == " "
              ? Transform.scale(
                  scale: 0.8,
                  child: Checkbox(
                      value: true,
                      onChanged: (isChecked) {},
                      activeColor: Colors.transparent,
                      checkColor: Colors.black,
                      focusColor: Colors.amber,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: AlwaysActiveBorderSizeCheckbox()),
                )
              : Text(
                  e.value.toString(),
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      );
    } else if (e.columnName == "Kolichestvo") {
      return Container(
        alignment: Alignment.centerRight,
        color: Color.fromARGB(255, 153, 251, 251),
        child: Padding(
          padding: const EdgeInsets.only(right: 3),
          child: e.columnName == " "
              ? Transform.scale(
                  scale: 0.8,
                  child: Checkbox(
                      value: true,
                      onChanged: (isChecked) {},
                      activeColor: Colors.transparent,
                      checkColor: Colors.black,
                      focusColor: Colors.amber,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: AlwaysActiveBorderSizeCheckbox()),
                )
              : Text(
                  e.value.toString(),
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      );
    } else if (e.columnName == "Sena") {
      return Container(
        alignment: Alignment.centerRight,
        color: Color.fromARGB(255, 0, 255, 255),
        child: Padding(
          padding: const EdgeInsets.only(right: 3),
          child: e.columnName == " "
              ? Transform.scale(
                  scale: 0.8,
                  child: Checkbox(
                      value: true,
                      onChanged: (isChecked) {},
                      activeColor: Colors.transparent,
                      checkColor: Colors.black,
                      focusColor: Colors.amber,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: AlwaysActiveBorderSizeCheckbox()),
                )
              : Text(
                  e.value.toString(),
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      );
    } else if (e.columnName == "PN") {
      return Padding(
        padding: const EdgeInsets.only(left: 2),
        child: Align(
          alignment: Alignment.centerLeft,
          child: e.columnName == " "
              ? Transform.scale(
                  scale: 0.8,
                  child: Checkbox(
                      value: true,
                      onChanged: (isChecked) {},
                      activeColor: Colors.transparent,
                      checkColor: Colors.black,
                      focusColor: Colors.amber,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: AlwaysActiveBorderSizeCheckbox()),
                )
              : Text(
                  e.value.toString(),
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      );
    } else if (e.columnName == "Summa") {
      return Container(
        alignment: Alignment.center,
        color: Color.fromARGB(255, 255, 251, 0),
        child: Padding(
          padding: const EdgeInsets.only(right: 3),
          child: e.columnName == " "
              ? Transform.scale(
                  scale: 0.8,
                  child: Checkbox(
                      value: true,
                      onChanged: (isChecked) {},
                      activeColor: Colors.transparent,
                      checkColor: Colors.black,
                      focusColor: Colors.amber,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: AlwaysActiveBorderSizeCheckbox()),
                )
              : Text(
                  e.value.toString(),
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(left: 2),
        child: Align(
          alignment: Alignment.center,
          child: e.columnName == " "
              ? Transform.scale(
                  scale: 0.8,
                  child: Checkbox(
                    value: true,
                    onChanged: (isChecked) {},
                    activeColor: Colors.transparent,
                    checkColor: Colors.black,
                    focusColor: Colors.amber,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: AlwaysActiveBorderSizeCheckbox(),
                  ),
                )
              : Text(
                  e.value.toString(),
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      );
    }
  }
}
