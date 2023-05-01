import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/blocs/sell_data/sell_data_bloc.dart';
import 'package:napt_sklad/controller/data/model/check/check_creation_model.dart';
import 'package:napt_sklad/controller/data/model/check/created_check_model.dart';
import 'package:napt_sklad/controller/data/model/tables/sell_model_test.dart';
import 'package:napt_sklad/view/widgets/pokupka_info.dart';
import 'package:napt_sklad/view/widgets/top_table.dart';

class SellPanel extends StatelessWidget {
  final PaymentDetails paymentDetails;
  final int index;
  final SellDataBloc sellDataBloc;
  final CreatedCheckData? createdCheckData;

  const SellPanel(
      {super.key,
      this.createdCheckData,
      required this.paymentDetails,
      required this.index,
      required this.sellDataBloc});
  @override
  Widget build(BuildContext context) {
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
              sellDataBloc: sellDataBloc,
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
