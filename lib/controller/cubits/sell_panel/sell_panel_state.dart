// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'sell_panel_cubit.dart';

abstract class SellPanelState {
  const SellPanelState();
}

class SellPanelData extends SellPanelState {
  final List<SellPanel> sellPanel;
  const SellPanelData({
    required this.sellPanel,
  });
}
