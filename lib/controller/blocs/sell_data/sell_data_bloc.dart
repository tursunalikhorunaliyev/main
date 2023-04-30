import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:napt_sklad/controller/data/model/check/check_creation_model.dart';
import 'package:napt_sklad/controller/data/model/search/search_data.dart';
import 'package:napt_sklad/controller/data/service/feathers.dart';
import 'package:napt_sklad/view/widgets/top_grid_row.dart';

part 'sell_data_event.dart';
part 'sell_data_state.dart';

class SellDataBloc extends Bloc<SellDataEvent, SellDataState> {
  SellDataBloc() : super(const SellStateData(topTableGridRow: [])) {
    on<SellDataAdd>((event, emit) {
      log("prepariiiing");
      log(state.topTableGridRow.length.toString());
      if (state.topTableGridRow.isEmpty) {
        FeathersService().createCheckDoc(CheckCreationModel(
            createdAt: DateTime.now(), status: CheckStatus.draft));
        emit(SellStateData(
            topTableGridRow: [TopTableGridRow(dataModel: event.data)]));
      } else {
        state.topTableGridRow.add(TopTableGridRow(dataModel: event.data));
        emit(SellStateData(topTableGridRow: state.topTableGridRow));
      }

      log("emmmmmitted");
    });
    on<SellDataRemove>((event, emit) {});
  }
}
