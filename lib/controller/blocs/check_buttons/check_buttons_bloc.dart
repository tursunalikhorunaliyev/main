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
            customeTabButton: [],
          ),
        ) {
    on<CheckButtonsAdd>((event, emit) {
      List<CustomeTabButton> from = List.from(state.customeTabButton)
        ..add(
          CustomeTabButton(
            buttonIndex: state.customeTabButton.length,
            docData: DocData(createdAt: DateTime.now()),
          ),
        );
      emit(CheckButtonsPanelData(customeTabButton: from));
    });

    on<CheckButtonsRemove>((event, emit) {
      state.customeTabButton.removeLast();
      emit(state);
    });
    on<CheckButtonOnLoad>((event, emit) async {
      Docs docs = await FeathersService().listCheckDoc();
      if (docs.data.isEmpty) {
        emit(
          CheckButtonsPanelData(
            customeTabButton: [
              CustomeTabButton(
                buttonIndex: 0,
                docData: DocData(
                  createdAt: DateTime.now(),
                ),
              ),
            ],
          ),
        );
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
