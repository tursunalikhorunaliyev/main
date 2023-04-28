import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:napt_sklad/controller/cubits/sell_data/sell_data_cubit.dart';

import 'package:napt_sklad/controller/data/model/check/created_check_model.dart';
import 'package:napt_sklad/controller/data/model/tables/sell_model_test.dart';
import 'package:napt_sklad/view/widgets/sell_panel.dart';

part 'sell_panel_event.dart';
part 'sell_panel_state.dart';

class SellPanelBloc extends Bloc<SellPanelEvent, SellPanelState> {
  SellPanelBloc()
      : super(
          SellPanelData(
            sellPanel: [
              SellPanel(
                  index: 0,
                  paymentDetails: PaymentDetails(),
                  createdCheckData: CreatedCheckData(
                      createdAt: DateTime.now(),
                      status: "draft",
                      id: "0",
                      uuid: "0"),
                  sellDataCubit: SellDataCubit()),
            ],
          ),
        ) {
    on<SellPanelAdd>((event, emit) {
      state.sellPanel.add(SellPanel(
          index: state.sellPanel.length,
          paymentDetails: PaymentDetails(),
          createdCheckData: event.createdCheckData,
          sellDataCubit: SellDataCubit()));
      emit(state);
    });
    on<SellPanelRemove>((event, emit) {
      state.sellPanel.removeAt(event.removeIndex);
      emit(state);
    });
  }
}
