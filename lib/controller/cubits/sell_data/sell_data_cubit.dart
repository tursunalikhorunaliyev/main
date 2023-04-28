import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:napt_sklad/service/datagrid_content.dart';
import 'package:napt_sklad/view/widgets/top_grid_row.dart';

part 'sell_data_state.dart';

class SellDataCubit extends Cubit<SellDataState> {
  SellDataCubit() : super(const SellData(topDataGridRow: []));
}
