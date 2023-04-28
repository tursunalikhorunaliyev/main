import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/data/model/tables/sell_model_test.dart';

class TopTableGridRow extends StatelessWidget {
  final SellDataModel dataModel;

  const TopTableGridRow({
    super.key,
    required this.dataModel,
  });

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();

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
    );
  }
}
