part of 'check_buttons_bloc.dart';

abstract class CheckButtonsState extends Equatable {
  final List<CustomeTabButton> customeTabButton;
  const CheckButtonsState({required this.customeTabButton});

  @override
  List<Object> get props => [];
}

class CheckButtonsPanelData extends CheckButtonsState {
  const CheckButtonsPanelData({required super.customeTabButton});
}
