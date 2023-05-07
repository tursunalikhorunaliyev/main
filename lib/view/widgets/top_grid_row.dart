import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/data/model/search/search_data.dart';
import 'package:napt_sklad/controller/data/model/table/table_line.dart';

class TopTableGridRow extends StatelessWidget {
  final TableLine tableLine;
  final Data dataModel;

  const TopTableGridRow(
      {super.key, required this.tableLine, required this.dataModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                tableLine.goods,
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
    );
  }
}
