import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/blocs/bottom_selection/selector_blo_c_bloc.dart';
import 'package:napt_sklad/controller/data/model/tables/sell_model_test.dart';
import 'package:napt_sklad/view/widgets/pokupka_info.dart';
import 'package:napt_sklad/view/widgets/top_table.dart';

class SellPanel extends StatelessWidget {
  final List<SellDataModel> sellDataModel;
  final PaymentDetails paymentDetails;
  final DateTime createdTime;
  final int index;
  final SelectorBloC selectorCubit;
  const SellPanel({
    super.key,
    required this.sellDataModel,
    required this.paymentDetails,
    required this.createdTime,
    required this.index,
    required this.selectorCubit,
  });

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
              selectorBloC: selectorCubit,
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
