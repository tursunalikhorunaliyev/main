import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:napt_sklad/controller/data/model/search/search_data.dart';
import 'package:napt_sklad/controller/data/service/feathers.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  int skipNumber = 0;
  SearchBloc()
      : super(
          SearchDataState(
            searchData: SearchData(data: [], total: 0, skip: 0),
          ),
        ) {
    on<SearchNonSkippedEvent>((event, emit) async {
      final feathers = FeathersService();
      final searchData = await feathers.getSearchData(event.searchWord, skipNumber);
      emit(SearchDataState(searchData: searchData));
    });
    on<SearchSkippedEvent>((event, emit) async {
      log("skipga tushdi");
      skipNumber+=10;
      final feathers = FeathersService();
      final searchData =
          await feathers.getSearchData(event.searchWord, skipNumber);
      SearchData searchDataSkipped = SearchData(
          data: state.searchData.data + searchData.data,
          total: searchData.total,
          skip: skipNumber);
      emit(SearchDataState(searchData: searchDataSkipped));
    });
  }
}
