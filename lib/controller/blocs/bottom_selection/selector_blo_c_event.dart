// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'selector_blo_c_bloc.dart';

@immutable
abstract class SelectorBloCEvent {
  final int currentIndex;
  const SelectorBloCEvent({
    required this.currentIndex,
  });
}

class SelectorClickEvent extends SelectorBloCEvent {
  const SelectorClickEvent({required super.currentIndex});
}

class SelectorKeyUpEvent extends SelectorBloCEvent {
  const SelectorKeyUpEvent({required super.currentIndex});
}

class SelectorKeyDownEvent extends SelectorBloCEvent {
  const SelectorKeyDownEvent({required super.currentIndex});
}
