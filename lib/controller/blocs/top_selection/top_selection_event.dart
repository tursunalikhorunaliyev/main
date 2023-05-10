// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'top_selection_bloc.dart';

abstract class TopSelectionEvent extends Equatable {
  final int currentIndex;
  const TopSelectionEvent({
    required this.currentIndex,
  });

  @override
  List<Object> get props => [currentIndex];
}

class TopSelectionUp extends TopSelectionEvent {
  const TopSelectionUp({required super.currentIndex});
}

class TopSelectionDown extends TopSelectionEvent {
  const TopSelectionDown({required super.currentIndex});
}

class TopSelectionOnClick extends TopSelectionEvent {
  const TopSelectionOnClick({required super.currentIndex});
}
