// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'top_selection_bloc.dart';

abstract class TopSelectionEvent extends Equatable {

@override
List<Object?> get props => throw UnimplementedError();
}

class TopSelectionUp extends TopSelectionEvent {
}

class TopSelectionDown extends TopSelectionEvent {
}

class TopSelectionOnClick extends TopSelectionEvent {
    final int currentIndex;

  TopSelectionOnClick({required this.currentIndex});
 
}
