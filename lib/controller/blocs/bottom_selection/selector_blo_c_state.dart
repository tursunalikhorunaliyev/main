// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'selector_blo_c_bloc.dart';

@immutable
abstract class SelectorBloCState {}

class SelectorBloCIndexState extends SelectorBloCState {
  final int currentIndex;
  SelectorBloCIndexState({
    required this.currentIndex,
  });
}
