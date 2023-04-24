import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/bloc/selector_blo_c_bloc.dart';
import 'package:napt_sklad/controller/data/model/search/search_data.dart';

class BottomGridRow extends StatelessWidget {
  final Data dataModel;
  final int index;
  const BottomGridRow(
      {super.key, required this.dataModel, required this.index});

  @override
  Widget build(BuildContext context) {
    final selectorCubit = BlocProvider.of<SelectorBloC>(context);
    final focusNode = FocusNode();

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
