import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/check_buttons/check_buttons_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_data/sell_data_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_panel/sell_panel_bloc.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';
import 'package:napt_sklad/controller/data/model/table/docs_model.dart';
import 'package:provider/provider.dart';

class CustomeTabButton extends StatelessWidget {
  final int buttonIndex;
  final DocData? docData;

  const CustomeTabButton({super.key, required this.buttonIndex, this.docData});

  @override
  Widget build(BuildContext context) {
   

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: BlocBuilder<TabButtonIndexCubit, TabButtonIndexState>(
       
        builder: (context, state) {
          return InkWell(
            onTap: () {
              context.read<TabButtonIndexCubit>().emit(
                TabButtonIndex(slideIndex: buttonIndex),
              );
              context.read<PageController>().jumpToPage(
                buttonIndex,
              );

              if (context.read<CheckButtonsBloc>()
                      .state.customeTabButton[buttonIndex].docData!.uuid !=
                  null) {
                context.read<SellPanelBloc>().state.sellPanel[buttonIndex].sellDataBloc
                    .add(SellDataFromServer(docId: docData!.uuid!));
              }
            },
            child: Container(
              width: 120,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: buttonIndex == state.slideIndex ? Colors.amber : null,
                border: const Border.symmetric(
                    vertical: BorderSide(
                  color: Colors.black,
                  width: 1,
                )),
              ),
              child: Text(
                docData != null
                    ? docData!.createdAt.toString().split(" ")[1].split(".")[0]
                    : DateTime.now().toString().split(" ")[1].split(".")[0],
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
