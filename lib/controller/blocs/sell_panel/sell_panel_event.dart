part of 'sell_panel_bloc.dart';

abstract class SellPanelEvent extends Equatable {
  const SellPanelEvent();

  @override
  List<Object> get props => [];
}

class SellPanelRemove extends SellPanelEvent {}

class SellPanelAdd extends SellPanelEvent {}
