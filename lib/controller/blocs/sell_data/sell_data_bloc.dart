import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:napt_sklad/controller/data/model/check/doc_checks_data_model.dart';
import 'package:napt_sklad/controller/data/model/tables/sell_model_test.dart';
import 'package:napt_sklad/controller/data/service/feathers.dart';
import 'package:napt_sklad/view/widgets/top_grid_row.dart';

import '../../data/model/table/table_line.dart' as tl;

part 'sell_data_event.dart';
part 'sell_data_state.dart';

class SellDataBloc extends Bloc<SellDataEvent, SellDataState> {
  SellDataBloc()
      : super(SellStateData(
            topTableGridRow: [], paymentDetails: PaymentDetails())) {
    on<SellDataAdd>((event, emit) {
      if (state.topTableGridRow.isEmpty) {
        emit(
          SellStateData(
            topTableGridRow: [
              TopTableGridRow(
                tableLine: event.tableLine,
                goods: event.goods,
                index: 0,
              )
            ],
            paymentDetails: PaymentDetails(
              oplata: state.paymentDetails.oplata + event.tableLine.cost.number,
              summa: state.paymentDetails.summa + event.tableLine.cost.number,
              skidka: 0,
            ),
          ),
        );
      } else {
        state.topTableGridRow.insert(
            0,
            TopTableGridRow(
              tableLine: event.tableLine,
              goods: event.goods,
              index: state.topTableGridRow.length,
            ));

        emit(
          SellStateData(
            topTableGridRow: state.topTableGridRow.toList(),
            paymentDetails: PaymentDetails(
                oplata:
                    state.paymentDetails.oplata + event.tableLine.cost.number,
                skidka: 0,
                summa:
                    state.paymentDetails.summa + event.tableLine.cost.number),
          ),
        );
      }
    });

    on<SellDataFromServer>((event, emit) async {
      int amount = 0;
      int skidka = 0;
      int summa = 0;
      DocChecksData docChecksData =
          await FeathersService().findCheckLine(event.docId);

      List<TopTableGridRow> rows = docChecksData.data.map((e) {
        amount += e.cost.number;
        summa += e.cost.number;
        return TopTableGridRow(
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
            cost: tl.Cost(currency: e.cost.currency, number: e.cost.number),
          ),
          goods: e.goods.name,
          index: docChecksData.data.indexOf(e),
        );
      }).toList();
      emit(
        SellStateData(
          topTableGridRow: rows,
          paymentDetails: PaymentDetails(
            oplata: amount as double,
            skidka: skidka as double,
            summa: summa as double,
          ),
        ),
      );
    });
  }
}
