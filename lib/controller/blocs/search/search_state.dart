part of 'search_bloc.dart';

abstract class SearchState{
  final SearchData searchData;
  const SearchState({required this.searchData});
  

}

class SearchDataState extends SearchState {
  const SearchDataState({required super.searchData});


}
