import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:napt_sklad/controller/blocs/sell_data/sell_data_bloc.dart';
import 'package:napt_sklad/controller/blocs/top_selection/top_selection_bloc.dart';
import 'package:napt_sklad/controller/data/model/table/docs_model.dart';
import 'package:napt_sklad/controller/data/service/feathers.dart';
import 'package:napt_sklad/view/widgets/sell_panel.dart';

part 'sell_panel_event.dart';
part 'sell_panel_state.dart';

class SellPanelBloc extends Bloc<SellPanelEvent, SellPanelState> {
  SellPanelBloc()
      : super(
          const SellPanelData(
            sellPanel: [],
          ),
        ) {
    on<SellPanelOnLoad>((event, emit) async {
      Docs docs = await FeathersService().listCheckDoc();
      if (docs.data.isEmpty) {
        emit(SellPanelData(
            sellPanel: [SellPanel(index: 0, sellDataBloc: SellDataBloc(),topSelectionBloc: TopSelectionBloc(),)]));
      } else {
        List<SellPanel> sellPanels = docs.data
            .map(
              (e) => SellPanel(
                index: docs.data.indexOf(e),
                sellDataBloc: SellDataBloc(),
                topSelectionBloc: TopSelectionBloc(),
              ),
            )
            .toList();

        emit(
          SellPanelData(sellPanel: sellPanels),
        );
      }
    });
    on<SellPanelAdd>((event, emit) {
      state.sellPanel.add(SellPanel(
          index: state.sellPanel.length, sellDataBloc: SellDataBloc(), topSelectionBloc: TopSelectionBloc(),));

      emit(state);
    });
    on<SellPanelRemove>((event, emit) {
      state.sellPanel.removeAt(event.removeIndex);
      emit(state);
    });
  }
}
