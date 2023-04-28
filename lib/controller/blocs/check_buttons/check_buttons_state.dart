part of 'check_buttons_bloc.dart';

abstract class CheckButtonsState {
  final List<CustomeTabButton> customeTabButton;
  const CheckButtonsState({required this.customeTabButton});
}

class CheckButtonsPanelData extends CheckButtonsState {
  const CheckButtonsPanelData({required super.customeTabButton});
}
