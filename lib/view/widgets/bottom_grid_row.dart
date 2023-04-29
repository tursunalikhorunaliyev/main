import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/bottom_selection/selector_blo_c_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_panel/sell_panel_bloc.dart';
import 'package:napt_sklad/controller/cubits/sell_data/sell_data_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/data/model/search/search_data.dart';
import 'package:napt_sklad/controller/data/model/tables/sell_model_test.dart';
import 'package:napt_sklad/view/widgets/qty_panel.dart';
import 'package:napt_sklad/view/widgets/sell_panel.dart';
import 'package:napt_sklad/view/widgets/top_grid_row.dart';

class BottomGridRow extends StatelessWidget {
  final Data dataModel;
  final int index;
  const BottomGridRow(
      {super.key, required this.dataModel, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final selectorCubit = BlocProvider.of<SelectorBloC>(context);
    final sellPanelBloC = BlocProvider.of<SellPanelBloc>(context);
    final focusNode = FocusNode();
    final tabButtonIndexBloC = BlocProvider.of<TabButtonIndexCubit>(context);
    return BlocBuilder<SelectorBloC, SelectorBloCState>(
      bloc: selectorCubit,
      builder: (context, state) {
        log("o'zgardi");
        state as SelectorBloCIndexState;
        log(state.currentIndex.toString());
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
              log(tabButtonIndexBloC.state.slideIndex.toString());
              sellPanelBloC.state.sellPanel[tabButtonIndexBloC.state.slideIndex]
                  .sellDataCubit
                  .emit(
                SellData(
                  topDataGridRow: [
                    TopTableGridRow(
                      dataModel: SellDataModel(
                        "polnoeNaimovaniye",
                        3,
                        1200,
                        1200,
                        "srokGod",
                        "seriya",
                        "mx",
                        "ikpu",
                        "mark",
                      ),
                    ),
                  ],
                ),
              );
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: QtyPanel(
                    drugCompany: dataModel.manufacturer,
                    drugName: dataModel.name,
                    ostatok: 20,
                    sena: "25000.00",
                    seriya: "12345",
                    srokGod: "01.02.2025",
                  ),
                ),
              );
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
