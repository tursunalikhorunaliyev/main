import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/payment_details/payment_details_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_data/sell_data_bloc.dart';
import 'package:napt_sklad/controller/blocs/top_selection/top_selection_bloc.dart';
import 'package:napt_sklad/controller/data/model/check/check_creation_model.dart';
import 'package:napt_sklad/controller/data/model/check/created_check_model.dart';
import 'package:napt_sklad/controller/data/model/tables/sell_model_test.dart';
import 'package:napt_sklad/view/widgets/pokupka_info.dart';
import 'package:napt_sklad/view/widgets/top_table.dart';

class SellPanel extends StatelessWidget {
  final int index;
  final SellDataBloc sellDataBloc;
  final CreatedCheckData? createdCheckData;
  final TopSelectionBloc topSelectionBloc;

  const SellPanel(
      {super.key,
      this.createdCheckData,
      required this.index,
      required this.sellDataBloc, required this.topSelectionBloc,});
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
              topSelectionBloc: topSelectionBloc,
            ),
          ),
          SizedBox(
            width: 250,
            child: BlocBuilder<SellDataBloc, SellDataState>(
              bloc: sellDataBloc,
              builder: (context, state) {
                state as SellStateData;
                return PokupokInfo(
                  paymentDetails: state.paymentDetails,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
