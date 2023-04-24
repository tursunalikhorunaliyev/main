// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'search_cubit_cubit.dart';

@immutable
abstract class SearchCubitState {}

class SearchCubitData extends SearchCubitState {
  final SearchData? searchData;
  SearchCubitData({
    required this.searchData,
  });
}
