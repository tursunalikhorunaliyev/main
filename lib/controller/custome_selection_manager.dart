
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class CustomeSelectionManager extends RowSelectionManager {
  final DataGridController _dataGridController;

  CustomeSelectionManager(this._dataGridController);

  /*  @override
  Future<void> handleKeyEvent(RawKeyEvent keyEvent) {
    if (keyEvent.isKeyPressed(LogicalKeyboardKey.arrowUp)) {
      RowColumnIndex rowColumnIndex = _dataGridController.currentCell;

      RowColumnIndex rowColumnIndexNext = RowColumnIndex(
          rowColumnIndex.rowIndex + 1, rowColumnIndex.columnIndex + 1);
      _dataGridController.moveCurrentCellTo(rowColumnIndexNext);
    }
    return super.handleKeyEvent(keyEvent);
  } */
}
