import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:napt_sklad/controller/data/model/table/docs_model.dart';
import 'package:napt_sklad/controller/data/service/feathers.dart';
import 'package:napt_sklad/view/widgets/tab_button.dart';

part 'check_buttons_event.dart';
part 'check_buttons_state.dart';

class CheckButtonsBloc extends Bloc<CheckButtonsEvent, CheckButtonsState> {
  CheckButtonsBloc()
      : super(
          const CheckButtonsPanelData(
            customeTabButton: [
              CustomeTabButton(
                buttonIndex: 0,
              ),
            ],
          ),
        ) {
    on<CheckButtonsAdd>((event, emit) {
      state.customeTabButton.add(
        CustomeTabButton(
          buttonIndex: state.customeTabButton.length,
        ),
      );
      emit(state);
    });
    on<CheckButtonsRemove>((event, emit) {
      state.customeTabButton.removeLast();
      emit(state);
    });
    on<CheckButtonOnLoad>((event, emit) async {
      log("boshlandi");
      Docs docs = await FeathersService().listCheckDoc();
      log("turgadi");
      if (docs.data.isEmpty) {
        emit(const CheckButtonsPanelData(
            customeTabButton: [CustomeTabButton(buttonIndex: 0)]));
      } else {
        List<CustomeTabButton> buttons = docs.data
            .map((e) => CustomeTabButton(
                  buttonIndex: docs.data.indexOf(e),
                  docData: docs.data[docs.data.indexOf(e)],
                ))
            .toList();

        emit(CheckButtonsPanelData(customeTabButton: buttons));
      }
    });
  }
}
