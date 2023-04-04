import 'package:napt_sklad/model/student_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class TestDataGridSource extends DataGridSource {
  List<DataGridRow> _studentsGrid = [];

  final List<Student> students;

  TestDataGridSource({required this.students}) {
    _studentsGrid = students
        .map(
          (e) => DataGridRow(
            cells: [
              DataGridCell(
                columnName: "Firstname",
                value: e.firstname,
              ),
              DataGridCell(
                columnName: "Lastname",
                value: e.lastname,
              ),
              DataGridCell(
                columnName: "Age",
                value: e.age,
              ),
              DataGridCell(
                columnName: "Grade",
                value: e.grade,
              ),
              DataGridCell(
                columnName: "Address",
                value: e.address,
              ),
              DataGridCell(
                columnName: "Phone number",
                value: e.phoneNumber,
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
    throw UnimplementedError();
  }
}
