import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/blocs/bottom_selection/selector_blo_c_bloc.dart';
import 'package:napt_sklad/controller/data/model/tables/sell_model_test.dart';
import 'package:napt_sklad/service/datagrid_content.dart';
import 'package:napt_sklad/view/widgets/sell_panel.dart';

part 'sell_panel_event.dart';
part 'sell_panel_state.dart';

class SellPanelBloc extends Bloc<SellPanelEvent, SellPanelState> {
  SellPanelBloc()
      : super(SellPanelData(
          sellPanel: [
            SellPanel(
              index: 0,
              sellDataModel: const [],
              paymentDetails: PaymentDetails(),
              createdTime: DateTime.now(),
              selectorCubit: SelectorBloC(),
            ),
          ],
        )) {
    on<SellPanelAdd>((event, emit) {
      state.sellPanel.add(SellPanel(
        index: state.sellPanel.length,
        sellDataModel: const [],
        paymentDetails: PaymentDetails(),
        createdTime: DateTime.now(),
        selectorCubit: SelectorBloC(),
      ));
      emit(state);
    });
    on<SellPanelRemove>((event, emit) {});
  }
}
