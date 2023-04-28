// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'sell_data_cubit.dart';

abstract class SellDataState extends Equatable {
  const SellDataState();

  @override
  List<Object> get props => [];
}

class SellData extends SellDataState {
  final List<TopTableGridRow> topDataGridRow;
  const SellData({
    required this.topDataGridRow,
  });
}
