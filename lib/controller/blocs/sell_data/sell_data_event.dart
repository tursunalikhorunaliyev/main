// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'sell_data_bloc.dart';

abstract class SellDataEvent extends Equatable {
  const SellDataEvent();
}

class SellDataAdd extends SellDataEvent {
  final TableLine tableLine;
  final Data data;
  const SellDataAdd({
    required this.tableLine,
    required this.data,
  });

  @override
  List<Object?> get props => [data, tableLine];
}

class SellDataRemove extends SellDataEvent {
  final int removeIndex;
  const SellDataRemove({
    required this.removeIndex,
  });

  @override
  List<Object?> get props => [removeIndex];
}
