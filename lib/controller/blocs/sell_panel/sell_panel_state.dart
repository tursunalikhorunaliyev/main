// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'sell_panel_bloc.dart';

abstract class SellPanelState {
  final List<SellPanel> sellPanel;

  const SellPanelState({required this.sellPanel});
}

class SellPanelData extends SellPanelState {
  const SellPanelData({required super.sellPanel});
}
