import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/cubits/sell_data/sell_data_cubit.dart';
import 'package:napt_sklad/controller/data/model/tables/sell_model_test.dart';
import 'package:napt_sklad/view/widgets/pokupka_info.dart';
import 'package:napt_sklad/view/widgets/top_table.dart';

class SellPanel extends StatelessWidget {
  final PaymentDetails paymentDetails;
  final DateTime createdTime;
  final int index;
  final SellDataCubit sellDataCubit;

  const SellPanel(
      {super.key,
      required this.paymentDetails,
      required this.createdTime,
      required this.index,
      required this.sellDataCubit});

  @override
  Widget build(BuildContext context) {
    //log("$index sell panel builded");
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black,
        width: 1,
      )),
      child: Row(
        children: [
          Expanded(
            child: TopTable(
              sellDataCubit: sellDataCubit,
              tableIndex: index,
            ),
          ),
          SizedBox(
            width: 250,
            child: PokupokInfo(
              paymentDetails: PaymentDetails(),
            ),
          ),
        ],
      ),
    );
  }
}
