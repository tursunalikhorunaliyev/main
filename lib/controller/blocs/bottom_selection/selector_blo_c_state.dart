// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'selector_blo_c_bloc.dart';

@immutable
abstract class SelectorBloCState {
  final int currentIndex;
  const SelectorBloCState({
    required this.currentIndex,
  });
}

class SelectorBloCIndexState extends SelectorBloCState {
  const SelectorBloCIndexState({required super.currentIndex});
}
