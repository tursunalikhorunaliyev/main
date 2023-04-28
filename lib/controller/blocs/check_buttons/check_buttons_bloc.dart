import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:napt_sklad/view/widgets/tab_button.dart';

part 'check_buttons_event.dart';
part 'check_buttons_state.dart';

class CheckButtonsBloc extends Bloc<CheckButtonsEvent, CheckButtonsState> {
  CheckButtonsBloc()
      : super(
          CheckButtonsPanelData(
            customeTabButton: [
              CustomeTabButton(
                buttonIndex: 0,
                creationTime: DateTime.now(),
              ),
            ],
          ),
        ) {
    on<CheckButtonsAdd>((event, emit) {
      state.customeTabButton.add(
        CustomeTabButton(
          buttonIndex: state.customeTabButton.length,
          creationTime: DateTime.now(),
        ),
      );
    });
    on<CheckButtonsRemove>((event, emit) {});
  }
}
