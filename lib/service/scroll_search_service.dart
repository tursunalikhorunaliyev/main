import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/blocs/search/search_bloc.dart';

class ScrollSearchService {
  final ScrollController scrollController;
  final String searchWord;
  final SearchBloc searchBloc;
  ScrollSearchService({
    required this.scrollController,
    required this.searchWord,
    required this.searchBloc,
  }) {
    scrollController.position.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
            searchBloc.add(SearchSkippedEvent(searchWord: searchWord));
          }
    });
  }
}
