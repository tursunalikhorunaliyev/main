import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:napt_sklad/controller/blocs/bottom_selection/selector_blo_c_bloc.dart';
import 'package:napt_sklad/controller/data/model/tables/sell_model_test.dart';
import 'package:napt_sklad/service/datagrid_content.dart';
import 'package:napt_sklad/view/widgets/sell_panel.dart';

part 'sell_panel_state.dart';

class SellPanelCubit extends Cubit<SellPanelState> {
  SellPanelCubit()
      : super(
          SellPanelData(
            sellPanel: [
              SellPanel(
                index: 0,
                sellDataModel: DataGridContent.testDataModelSell,
                paymentDetails: PaymentDetails(),
                createdTime: DateTime.now(),
                selectorCubit: SelectorBloC(),
              ),
            ],
          ),
        );

  addItem() {
    SellPanelData oldState = state as SellPanelData;
    oldState.sellPanel.add(
      SellPanel(
        index: oldState.sellPanel.length,
        sellDataModel: DataGridContent.testDataModelSell,
        paymentDetails: PaymentDetails(),
        createdTime: DateTime.now(),
        selectorCubit: SelectorBloC(),
      ),
    );

    emit(SellPanelData(sellPanel: oldState.sellPanel));
  }
}
