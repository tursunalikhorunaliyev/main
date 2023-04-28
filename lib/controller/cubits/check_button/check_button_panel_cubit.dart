import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:napt_sklad/view/widgets/tab_button.dart';

part 'check_button_panel_state.dart';

class CheckButtonPanelCubit extends Cubit<CheckButtonPanelState> {
  CheckButtonPanelCubit()
      : super(
          CheckButtonPanelData(
            customeTabButton: [
              CustomeTabButton(
                buttonIndex: 0,
                creationTime: DateTime.now(),
              )
            ],
          ),
        );
}
