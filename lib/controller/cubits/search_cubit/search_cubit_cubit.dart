import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:napt_sklad/controller/data/model/search/search_data.dart';
import 'package:napt_sklad/controller/data/service/feathers.dart';

part 'search_cubit_state.dart';

class SearchCubit extends Cubit<SearchCubitState> {
  SearchCubit() : super(SearchCubitData(searchData: null));

  getData(String text, int offset) async {
    final feathers = FeathersService();
    final searchData = await feathers.getSearchData(text, offset);

    emit(SearchCubitData(searchData: searchData));
  }
}
