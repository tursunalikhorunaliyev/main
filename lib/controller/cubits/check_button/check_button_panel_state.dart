// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'check_button_panel_cubit.dart';

abstract class CheckButtonPanelState extends Equatable {
  const CheckButtonPanelState();

  @override
  List<Object> get props => [];
}

class CheckButtonPanelData extends CheckButtonPanelState {
  final List<CustomeTabButton> customeTabButton;
  const CheckButtonPanelData({
    required this.customeTabButton,
  });
}
