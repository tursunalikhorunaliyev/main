// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'sell_panel_bloc.dart';

abstract class SellPanelEvent extends Equatable {
  const SellPanelEvent();

  @override
  List<Object> get props => [];
}

class SellPanelRemove extends SellPanelEvent {
  final int removeIndex;
  const SellPanelRemove({
    required this.removeIndex,
  });
}

class SellPanelAdd extends SellPanelEvent {
  final CreatedCheckData createdCheckData;
  const SellPanelAdd({
    required this.createdCheckData,
  });
}
