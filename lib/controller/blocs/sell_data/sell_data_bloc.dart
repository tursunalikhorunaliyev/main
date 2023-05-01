import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:napt_sklad/controller/data/model/search/search_data.dart';
import 'package:napt_sklad/controller/data/model/table/table_line.dart';
import 'package:napt_sklad/view/widgets/top_grid_row.dart';

part 'sell_data_event.dart';
part 'sell_data_state.dart';

class SellDataBloc extends Bloc<SellDataEvent, SellDataState> {
  SellDataBloc() : super(const SellStateData(topTableGridRow: [])) {
    on<SellDataAdd>((event, emit) {
      log("prepariiiing");
      log(state.topTableGridRow.length.toString());
      if (state.topTableGridRow.isEmpty) {
        emit(SellStateData(topTableGridRow: [
          TopTableGridRow(
            tableLine: event.tableLine,
            dataModel: event.data,
          )
        ]));
      } else {
        state.topTableGridRow.add(TopTableGridRow(
          tableLine: event.tableLine,
          dataModel: event.data,
        ));
        emit(SellStateData(topTableGridRow: state.topTableGridRow));
      }

      log("emmmmmitted");
    });
    on<SellDataRemove>((event, emit) {});
  }
}
