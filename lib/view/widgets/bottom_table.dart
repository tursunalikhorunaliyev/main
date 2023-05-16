import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/bottom_selection/selector_blo_c_bloc.dart';
import 'package:napt_sklad/controller/blocs/search/search_bloc.dart';
import 'package:napt_sklad/controller/provider/focus_nodes.dart';
import 'package:napt_sklad/controller/provider/search_word.dart';
import 'package:napt_sklad/view/widgets/bottom_grid_row.dart';

class BottomTable extends StatelessWidget {
  const BottomTable({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rowHeader(),
        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            if (state.searchData.data.isEmpty) {
              return const SizedBox();
            }
            context
                .read<SelectorBloC>()
                .changeDataLength(state.searchData!.data.length);
            return Expanded(
              child: ListView.builder(
                controller: context.read<ScrollController>(),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: state.searchData.data.length + 1,
                itemBuilder: (context, index) =>
                    index == state.searchData.data.length
                        ? TextButton(
                            style: const  ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 47, 209, 53)),
                            ),
                            onPressed: () {
                              context
                                  .read<FocusNodesProvider>()
                                  .focusNodeTopPanel
                                  .unfocus();
                              context
                                  .read<FocusNodesProvider>()
                                  .focusNodeBottomPanel
                                  .requestFocus();
                              context.read<SearchBloc>().add(SearchSkippedEvent(
                                  searchWord: context
                                      .read<SearchWordProvider>()
                                      .getSearchWord));
                            },
                            child: const Text("Показать больше", style: TextStyle(color: Colors.black),))
                        : BottomGridRow(
                            dataModel: state.searchData.data[index],
                            index: index,
                          ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget rowHeader() {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Flexible(
            flex: 18,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "Полное наимование",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "УП",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "Цена",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "Остаток",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "Серия",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "Срок год",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "МХ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "ИКПУ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "Акция",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
