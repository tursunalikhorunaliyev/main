part of 'sell_data_bloc.dart';

abstract class SellDataState extends Equatable {
  final List<TopTableGridRow> topTableGridRow;
  const SellDataState({required this.topTableGridRow});

  @override
  List<Object> get props => [topTableGridRow];
}

class SellStateData extends SellDataState {
  const SellStateData({required super.topTableGridRow});
}
