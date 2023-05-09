// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'check_buttons_bloc.dart';

abstract class CheckButtonsState {
  final List<CustomeTabButton> customeTabButton;
  const CheckButtonsState({required this.customeTabButton});
}

class CheckButtonsPanelData extends CheckButtonsState {
  final bool isFirstDraft;
  const CheckButtonsPanelData({
    required this.isFirstDraft,
    required super.customeTabButton,
  });
}
