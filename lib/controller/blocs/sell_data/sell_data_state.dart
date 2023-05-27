part of 'sell_data_bloc.dart';

abstract class SellDataState {
  final List<TopTableData> topTableGridRow;
  final PaymentDetails paymentDetails;
  const SellDataState(
      {required this.topTableGridRow, required this.paymentDetails});
}

class SellStateData extends SellDataState {
  const SellStateData(
      {required super.topTableGridRow, required super.paymentDetails});
}
