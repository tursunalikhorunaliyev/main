// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'sell_data_bloc.dart';

abstract class SellDataEvent extends Equatable {
  const SellDataEvent();
}

class SellDataAdd extends SellDataEvent {
  final tl.TableLine tableLine;
  final String goods;
  const SellDataAdd({
    required this.tableLine,
    required this.goods,
  });

  @override
  List<Object?> get props => [tableLine];
}

class SellDataFromServer extends SellDataEvent {
  final String docId;
  const SellDataFromServer({
    required this.docId,
  });
  @override
  List<Object?> get props => [docId];
}

class SellDataRemove extends SellDataEvent {
  final int removeIndex;
  const SellDataRemove({
    required this.removeIndex,
  });

  @override
  List<Object?> get props => [removeIndex];
}

class SellDataChange extends SellDataEvent {
  final String uuid;
  final int index;
  const SellDataChange({
    required this.uuid,
    required this.index,
  });

  @override
  List<Object?> get props => [uuid, index];
}
