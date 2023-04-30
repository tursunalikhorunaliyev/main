part of 'sell_data_bloc.dart';

abstract class SellDataState {
  final List<TopTableGridRow> topTableGridRow;
  const SellDataState({
    required this.topTableGridRow,
  });
}

class SellStateData extends SellDataState {
  const SellStateData({required super.topTableGridRow});
}
