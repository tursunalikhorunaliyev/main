import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:napt_sklad/controller/data/model/check/doc_checks_data_model.dart';
import 'package:napt_sklad/controller/data/model/search/search_data.dart';
import 'package:napt_sklad/controller/data/service/feathers.dart';
import 'package:napt_sklad/view/widgets/top_grid_row.dart';

import '../../data/model/table/table_line.dart' as tl;

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
    on<SellDataFromServer>((event, emit) async {
      DocChecksData docChecksData =
          await FeathersService().findCheckLine(event.docId);
      List<TopTableGridRow> rows = docChecksData.data
          .map((e) => TopTableGridRow(
                tableLine: tl.TableLine(
                  document: e.document,
                  goods: e.goods.name,
                  qty: tl.Qty(number: e.qty.number, uom: e.qty.uom.id),
                  price: tl.Price(
                    number: e.price.number,
                    currency: e.price.currency,
                    per: tl.Qty(
                      number: e.price.number,
                      uom: e.price.per.uom,
                    ),
                  ),
                  cost:
                      tl.Cost(currency: e.cost.currency, number: e.cost.number),
                ),
                dataModel: Data(
                    name: e.goods.name,
                    manufacturer: e.goods.name,
                    id: e.id,
                    uuid: e.uuid),
              ))
          .toList()
          .reversed
          .toList();
      emit(SellStateData(topTableGridRow: rows));
    });
  }
}
