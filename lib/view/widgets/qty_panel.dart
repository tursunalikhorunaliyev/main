import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_data/sell_data_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_panel/sell_panel_bloc.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/data/model/check/check_creation_model.dart';
import 'package:napt_sklad/controller/data/model/search/search_data.dart';
import 'package:napt_sklad/controller/data/model/table/table_line.dart';
import 'package:napt_sklad/controller/data/service/feathers.dart';
import 'package:napt_sklad/controller/provider/focus_nodes.dart';

import 'package:provider/provider.dart';

class QtyPanel extends StatelessWidget {
  final Data data;
  final String sena;
  final String seriya;
  final String srokGod;
  final int ostatok;
  const QtyPanel({
    super.key,
    required this.data,
    required this.sena,
    required this.seriya,
    required this.srokGod,
    required this.ostatok,
  });

  @override
  Widget build(BuildContext context) {


    final kolichestvoTextController = TextEditingController();
    var summaTextController = TextEditingController(text: "0.00");

    context.read<FocusNodesProvider>().focusNodeQtyPanel.requestFocus();

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 400,
                  child: Text(
                    data.name,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(0xFF0E0631),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  data.manufacturer,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF0E0631),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sena",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF0E0631),
                  ),
                ),
                Text(
                  sena,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color(0xFF0E0631),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 35,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Seriya",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF0E0631),
                  ),
                ),
                Text(
                  seriya,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color(0xFF0E0631),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Srok godnost",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF0E0631),
                  ),
                ),
                Text(
                  srokGod,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color(0xFF0E0631),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Ostatok",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF0E0631),
                  ),
                ),
                Text(
                  ostatok.toString(),
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color(0xFF0E0631),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 150,
              child: TextField(
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                autofocus: true,
                focusNode: context.read<FocusNodesProvider>().focusNodeQtyPanel,
                controller: kolichestvoTextController,
                onSubmitted: (value) {
                  if (kolichestvoTextController.text.isNotEmpty) {
                    if (context
                        .read<SellPanelBloc>()
                        .state
                        .sellPanel[context.read<TabButtonIndexCubit>().state.slideIndex]
                        .sellDataBloc
                        .state
                        .topTableGridRow
                        .isEmpty) {
                      FeathersService()
                          .createCheckDoc(CheckCreationModel(
                              createdAt: DateTime.now(),
                              status: CheckStatus.draft))
                          .then((value) {
                        TableLine tabLine = TableLine(
                          document: value.uuid,
                          goods: data.uuid,
                          qty: Qty(
                              number: int.parse(kolichestvoTextController.text),
                              uom: "pkg"),
                          price: Price(
                              number: 25000,
                              currency: "UZS",
                              per: Qty(number: 1, uom: "pkg")),
                          cost: Cost(
                              number: int.parse(summaTextController.text),
                              currency: "UZS"),
                        );

                        FeathersService().createCheckLine(tabLine.toJson());

                        context
                            .read<SellPanelBloc>()
                            .state
                            .sellPanel[context.read<TabButtonIndexCubit>().state.slideIndex]
                            .sellDataBloc
                            .add(
                              SellDataAdd(tableLine: tabLine, goods: data.name),
                            );
                      });
                    } else {
                      TableLine tableLine = TableLine(
                        document: context
                            .read<SellPanelBloc>()
                            .state
                            .sellPanel[context.read<TabButtonIndexCubit>().state.slideIndex]
                            .sellDataBloc
                            .state
                            .topTableGridRow[0]
                            .tableLine
                            .document,
                        goods: data.uuid,
                        qty: Qty(
                          number: int.parse(kolichestvoTextController.text),
                          uom: "pkg",
                        ),
                        price: Price(
                          number: 25000,
                          currency: "UZS",
                          per: Qty(
                            number: 1,
                            uom: "pkg",
                          ),
                        ),
                        cost: Cost(
                          number: int.parse(summaTextController.text),
                          currency: "UZS",
                        ),
                      );

                      context
                          .read<SellPanelBloc>()
                          .state
                          .sellPanel[context.read<TabButtonIndexCubit>().state.slideIndex]
                          .sellDataBloc
                          .add(SellDataAdd(
                              tableLine: tableLine, goods: data.name));

                      FeathersService().createCheckLine(tableLine.toJson());
                    }

                    Navigator.pop(context);
                  }
                },
                onChanged: (value) {
                  int a = (int.parse(value)) * int.parse(sena);
                  summaTextController.value =
                      TextEditingValue(text: a.toString());
                },
                cursorColor: const Color(0xFFD9D9D9),
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0E0631),
                ),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "0",
                  hintStyle: TextStyle(
                    fontSize: 40,
                  ),
                  labelText: "Kolichestvo",
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  contentPadding: EdgeInsets.only(bottom: 10),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF0E0631),
                    fontWeight: FontWeight.w300,
                  ),
                  border: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFD9D9D9),
                      width: 3,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFD9D9D9),
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: summaTextController,
                textDirection: TextDirection.rtl,
                cursorColor: const Color(0xFFD9D9D9),
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0E0631),
                ),
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Summa",
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  contentPadding: EdgeInsets.only(bottom: 10),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF0E0631),
                    fontWeight: FontWeight.w300,
                  ),
                  border: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFD9D9D9),
                      width: 3,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFD9D9D9),
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.center,
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.red.shade400,
                    borderRadius: BorderRadius.circular(5)),
                child: const Text("Cancel"),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                if (kolichestvoTextController.text.isNotEmpty) {
                  if (context
                      .read<SellPanelBloc>()
                      .state
                      .sellPanel[context.read<TabButtonIndexCubit>().state.slideIndex]
                      .sellDataBloc
                      .state
                      .topTableGridRow
                      .isEmpty) {
                    FeathersService()
                        .createCheckDoc(CheckCreationModel(
                            createdAt: DateTime.now(),
                            status: CheckStatus.draft))
                        .then((value) {
                      TableLine tabLine = TableLine(
                        document: value.uuid,
                        goods: data.uuid,
                        qty: Qty(
                            number: int.parse(kolichestvoTextController.text),
                            uom: "pkg"),
                        price: Price(
                            number: 25000,
                            currency: "UZS",
                            per: Qty(number: 1, uom: "pkg")),
                        cost: Cost(
                            number: int.parse(summaTextController.text),
                            currency: "UZS"),
                      );

                      FeathersService().createCheckLine(tabLine.toJson());

                      context
                          .read<SellPanelBloc>()
                          .state
                          .sellPanel[context.read<TabButtonIndexCubit>().state.slideIndex]
                          .sellDataBloc
                          .add(
                            SellDataAdd(tableLine: tabLine, goods: data.name),
                          );
                    });
                  } else {
                    TableLine tableLine = TableLine(
                      document: context
                          .read<SellPanelBloc>()
                          .state
                          .sellPanel[context.read<TabButtonIndexCubit>().state.slideIndex]
                          .sellDataBloc
                          .state
                          .topTableGridRow[0]
                          .tableLine
                          .document,
                      goods: data.uuid,
                      qty: Qty(
                        number: int.parse(kolichestvoTextController.text),
                        uom: "pkg",
                      ),
                      price: Price(
                        number: 25000,
                        currency: "UZS",
                        per: Qty(
                          number: 1,
                          uom: "pkg",
                        ),
                      ),
                      cost: Cost(
                        number: int.parse(summaTextController.text),
                        currency: "UZS",
                      ),
                    );

                    context
                        .read<SellPanelBloc>()
                        .state
                        .sellPanel[context.read<TabButtonIndexCubit>().state.slideIndex]
                        .sellDataBloc
                        .add(SellDataAdd(
                            tableLine: tableLine, goods: data.name));

                    FeathersService().createCheckLine(tableLine.toJson());
                  }

                  Navigator.pop(context);
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.greenAccent.shade400,
                    borderRadius: BorderRadius.circular(5)),
                child: const Text("OK"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
