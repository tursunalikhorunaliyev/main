part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  final SearchData searchData;
  const SearchState({required this.searchData});
  
  @override
  List<Object> get props => [];
}

class SearchDataState extends SearchState {
  const SearchDataState({required super.searchData});


}
