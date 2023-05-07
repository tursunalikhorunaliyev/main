// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/check_buttons/check_buttons_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_panel/sell_panel_bloc.dart';
import 'package:napt_sklad/view/widgets/noviy_check_button.dart';
import 'package:provider/provider.dart';

class TopPanel extends StatelessWidget {
  const TopPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("top panel qurildi");
    final sellPanelBloc = BlocProvider.of<SellPanelBloc>(context);
    final pageController = Provider.of<PageController>(context);
    final checkButtonCubit = BlocProvider.of<CheckButtonsBloc>(context);

    final scrollController = ScrollController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: BlocBuilder<SellPanelBloc, SellPanelState>(
            bloc: sellPanelBloc,
            builder: (context, state) {
              return PageView.builder(
                allowImplicitScrolling: true,
                reverse: true,
                controller: pageController,
                itemCount: state.sellPanel.length,
                itemBuilder: (context, index) {
                  return state.sellPanel[index];
                },
              );
            },
          ),
        ),
        SizedBox(
          height: 40,
          child: BlocBuilder<CheckButtonsBloc, CheckButtonsState>(
            buildWhen: (previous, current) {
              if (previous.customeTabButton.length !=
                  current.customeTabButton.length) {
                WidgetsBinding.instance.addPostFrameCallback((_) => {
                      scrollController.animateTo(
                        scrollController.position.maxScrollExtent,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.fastLinearToSlowEaseIn,
                      )
                    });
                return true;
              } else {
                return false;
              }
            },
            bloc: checkButtonCubit,
            builder: (context, state) {
              state as CheckButtonsPanelData;

              return ListView.builder(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                addAutomaticKeepAlives: true,
                itemCount: state.customeTabButton.length + 1,
                itemBuilder: (context, index) {
                  return index == state.customeTabButton.length
                      ? const NoviyCheckButton()
                      : state.customeTabButton[index];
                },
              );
            },
          ),
        )
      ],
    );
  }
}
