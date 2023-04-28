// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'check_buttons_bloc.dart';

abstract class CheckButtonsEvent extends Equatable {
  const CheckButtonsEvent();

  @override
  List<Object> get props => [];
}

class CheckButtonsAdd extends CheckButtonsEvent {}

class CheckButtonsRemove extends CheckButtonsEvent {
  final int removeIndex;
  const CheckButtonsRemove({
    required this.removeIndex,
  });
}
