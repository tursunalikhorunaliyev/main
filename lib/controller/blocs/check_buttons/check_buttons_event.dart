part of 'check_buttons_bloc.dart';

abstract class CheckButtonsEvent extends Equatable {
  const CheckButtonsEvent();

  @override
  List<Object> get props => [];
}

class CheckButtonsAdd extends CheckButtonsEvent {}

class CheckButtonsRemove extends CheckButtonsEvent {}
