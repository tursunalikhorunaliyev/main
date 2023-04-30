import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:napt_sklad/controller/data/model/check/created_check_model.dart';
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
  }
}
