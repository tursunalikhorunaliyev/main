part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  final String searchWord;

  const SearchEvent({required this.searchWord});

  @override
  List<Object> get props => [];
}

class SearchNonSkippedEvent extends SearchEvent {
  const SearchNonSkippedEvent({required super.searchWord});
}

class SearchSkippedEvent extends SearchEvent {
  final int skipNumber;
  const SearchSkippedEvent({
    required super.searchWord,
    required this.skipNumber,
  });
}
