import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/top_selection/top_selection_bloc.dart';
import 'package:napt_sklad/controller/data/model/table/table_line.dart';

class TopTableGridRow extends StatelessWidget {
  final TableLine tableLine;
  final String goods;
  final int index;

  const TopTableGridRow({
    super.key,
    required this.tableLine,
    required this.goods,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final topSelectorBloC = BlocProvider.of<TopSelectionBloc>(context);
    final focusNode = FocusNode();

    return BlocBuilder<TopSelectionBloc, TopSelectionState>(
      bloc: topSelectorBloC,
      builder: (context, state) {
        return RawKeyboardListener(
          focusNode: focusNode,
          autofocus: true,
          onKey: (value) {
            if (value.isKeyPressed(LogicalKeyboardKey.arrowDown)) {
              topSelectorBloC
                  .add(TopSelectionDown(currentIndex: state.nextIndex));
            } else if (value.isKeyPressed(LogicalKeyboardKey.arrowUp)) {
              topSelectorBloC
                  .add(TopSelectionUp(currentIndex: state.nextIndex));
            }
          },
          child: GestureDetector(
            onTap: () {
              topSelectorBloC.add(TopSelectionOnClick(currentIndex: index));
              focusNode.requestFocus();
            },
            child: ColoredBox(
              color:
                  state.nextIndex == index ? Colors.blue : Colors.transparent,
              child: SizedBox(
                height: 40,
                child: Row(
                  children: [
                    Flexible(
                      flex: 18,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                        child: Text(
                          goods,
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
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                        child: Text(
                          tableLine.qty.number.toString(),
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
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                        child: Text(
                          tableLine.price.number.toString(),
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
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                        child: Text(
                          tableLine.cost.number.toString(),
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
          ),
        );
      },
    );
  }
}
