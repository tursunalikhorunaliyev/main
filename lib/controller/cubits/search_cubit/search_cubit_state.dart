// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'search_cubit_cubit.dart';

@immutable
abstract class SearchCubitState {
  final SearchData? searchData;
  const SearchCubitState({
    required this.searchData,
  });
}

class SearchCubitData extends SearchCubitState {
  const SearchCubitData({required super.searchData});
}
