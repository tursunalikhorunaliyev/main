import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/bottom_selection/selector_blo_c_bloc.dart';
import 'package:napt_sklad/controller/data/model/tables/sell_model_test.dart';

class TopTableGridRow extends StatelessWidget {
  final SelectorBloC selectorBloC;
  final SellDataModel dataModel;
  final int index;
  const TopTableGridRow(
      {super.key,
      required this.dataModel,
      required this.index,
      required this.selectorBloC});

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();

    return BlocBuilder<SelectorBloC, SelectorBloCState>(
      bloc: selectorBloC,
      builder: (context, state) {
        state as SelectorBloCIndexState;
        return RawKeyboardListener(
          focusNode: focusNode,
          autofocus: focusNode.hasFocus,
          onKey: (value) {
            if (value.isKeyPressed(LogicalKeyboardKey.arrowDown)) {
              selectorBloC
                  .add(SelectorKeyDownEvent(currentIndex: state.currentIndex));
            } else if (value.isKeyPressed(LogicalKeyboardKey.arrowUp)) {
              selectorBloC
                  .add(SelectorKeyUpEvent(currentIndex: state.currentIndex));
            }
          },
          child: GestureDetector(
            onTap: () {
              focusNode.requestFocus();
              selectorBloC.add(
                SelectorClickEvent(
                  currentIndex: index,
                ),
              );
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
                        dataModel.polnoeNaimovaniye,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
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
                        dataModel.kolichestvo.toString(),
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
                      child: Text(
                        dataModel.sena.toString(),
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
                      child: Text(
                        dataModel.summa.toString(),
                        style: const TextStyle(
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
                      child: Text(
                        dataModel.srokGod.toString(),
                        style: const TextStyle(
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
                      child: Text(
                        dataModel.seriya.toString(),
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
                        dataModel.mx.toString(),
                        style: const TextStyle(
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
                      child: Text(
                        dataModel.ikpu.toString(),
                        style: const TextStyle(
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
                      child: Text(
                        dataModel.mark.toString(),
                        style: const TextStyle(
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
  }
}
