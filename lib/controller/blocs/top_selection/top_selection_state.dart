// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'top_selection_bloc.dart';

abstract class TopSelectionState {
  final int nextIndex;
  const TopSelectionState({
    required this.nextIndex,
  });
}

class TopSelectionData extends TopSelectionState {
  const TopSelectionData({required super.nextIndex});
}
