import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/bottom_selection/selector_blo_c_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_panel/sell_panel_bloc.dart';
import 'package:napt_sklad/controller/cubits/search_cubit/search_cubit_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/data/model/search/search_data.dart';
import 'package:napt_sklad/view/widgets/qty_panel.dart';
class BottomGridRow extends StatelessWidget {
  final Data dataModel;
  final int index;
  const BottomGridRow(
      {super.key, required this.dataModel, required this.index});

  @override
  Widget build(BuildContext context) {
    final selectorCubit = BlocProvider.of<SelectorBloC>(context);
    final sellPanelBloC = BlocProvider.of<SellPanelBloc>(context);
    final focusNode = FocusNode();
    final tabButtonIndexBloC = BlocProvider.of<TabButtonIndexCubit>(context);

    final searchCubtit = BlocProvider.of<SearchCubit>(context);
    return BlocBuilder<SelectorBloC, SelectorBloCState>(
      bloc: selectorCubit,
      builder: (context, state) {
        SearchCubitData searchCubitData = searchCubtit.state as SearchCubitData;
        SelectorBloCIndexState selector =
            selectorCubit.state as SelectorBloCIndexState;

        state as SelectorBloCIndexState;

        return RawKeyboardListener(
          focusNode: focusNode,
          autofocus: focusNode.hasFocus,
          onKey: (value) {
            if (value.isKeyPressed(LogicalKeyboardKey.arrowDown)) {
              selectorCubit
                  .add(SelectorKeyDownEvent(currentIndex: state.currentIndex));
            } else if (value.isKeyPressed(LogicalKeyboardKey.arrowUp)) {
              selectorCubit
                  .add(SelectorKeyUpEvent(currentIndex: state.currentIndex));
            } else if (value.isKeyPressed(LogicalKeyboardKey.enter)) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: QtyPanel(
                        data: searchCubitData
                            .searchData!.data[selector.currentIndex],
                        ostatok: 20,
                        sena: "25000",
                        seriya: "12345",
                        srokGod: "01.02.2025",
                      ),
                    );
                  });
            }
          },
          child: GestureDetector(
            onTap: () {
              selectorCubit.add(SelectorClickEvent(currentIndex: index));
              focusNode.requestFocus();
            },
            child: SizedBox(
              height: 40,
              child: Row(
                children: [
                  Flexible(
                    flex: 18,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: state.currentIndex == index
                            ? const Color.fromARGB(255, 0, 131, 175)
                            : null,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                      child: Text(
                        dataModel.name,
                        style: const TextStyle(
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
                        color: state.currentIndex == index
                            ? const Color.fromARGB(255, 0, 131, 175)
                            : null,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                      child: Text(
                        dataModel.manufacturer,
                        style: const TextStyle(
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
                        color: state.currentIndex == index
                            ? const Color.fromARGB(255, 0, 131, 175)
                            : null,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                      child: const Text(
                        "",
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
                        color: state.currentIndex == index
                            ? const Color.fromARGB(255, 0, 131, 175)
                            : null,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                      child: const Text(
                        "",
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
                        color: state.currentIndex == index
                            ? const Color.fromARGB(255, 0, 131, 175)
                            : null,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                      child: const Text(
                        "",
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
                        color: state.currentIndex == index
                            ? const Color.fromARGB(255, 0, 131, 175)
                            : null,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                      child: const Text(
                        "",
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
                        color: state.currentIndex == index
                            ? const Color.fromARGB(255, 0, 131, 175)
                            : null,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                      child: const Text(
                        "",
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
                        color: state.currentIndex == index
                            ? const Color.fromARGB(255, 0, 131, 175)
                            : null,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                      child: const Text(
                        "",
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
                        color: state.currentIndex == index
                            ? const Color.fromARGB(255, 0, 131, 175)
                            : null,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                      child: const Text(
                        "",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    ;
  }
}
