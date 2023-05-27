// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:napt_sklad/controller/data/model/table/table_line.dart';

class TopTableData {
  final TableLine topTableLine;
  final String goods;
  final int index;
  TopTableData({
    required this.topTableLine,
    required this.goods,
    required this.index,
  });
}
