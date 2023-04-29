import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:napt_sklad/controller/data/model/search/search_data.dart';
import 'package:napt_sklad/view/widgets/top_grid_row.dart';

part 'sell_data_event.dart';
part 'sell_data_state.dart';

class SellDataBloc extends Bloc<SellDataEvent, SellDataState> {
  SellDataBloc() : super(const SellStateData(topTableGridRow: [])) {
    on<SellDataAdd>((event, emit) {
      state.topTableGridRow.add(TopTableGridRow(dataModel: event.data));
      emit(state);
    });
    on<SellDataRemove>((event, emit) {});
  }
}
