import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/blocs/check_buttons/check_buttons_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_data/sell_data_bloc.dart';
import 'package:napt_sklad/controller/blocs/sell_panel/sell_panel_bloc.dart';
import 'package:napt_sklad/view/widgets/noviy_check_button.dart';
import 'package:napt_sklad/view/widgets/sell_panel.dart';
import 'package:napt_sklad/view/widgets/tab_button.dart';

class TopPanel extends StatelessWidget {
  const TopPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: BlocBuilder<SellPanelBloc, SellPanelState>(
            builder: (context, state) {
              return PageView.builder(
                onPageChanged: (value) {},
                allowImplicitScrolling: true,
                controller: context.read<PageController>(),
                itemCount: state.sellPanel.length,
                itemBuilder: (context, index) {
                  SellPanel(
                      index: index,
                      sellDataBloc: state.sellPanel[index].sellDataBloc,
                      topSelectionBloc:
                          state.sellPanel[index].topSelectionBloc);
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
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) {
              state as CheckButtonsPanelData;
              return ListView.builder(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                addAutomaticKeepAlives: true,
                itemCount: state.customeTabButton.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0 &&
                      state.customeTabButton.isNotEmpty &&
                      !state.isFirstDraft) {
                    context
                        .read<SellPanelBloc>()
                        .state
                        .sellPanel[index]
                        .sellDataBloc
                        .add(
                          SellDataFromServer(
                            docId: state.customeTabButton[index].docData!.uuid!,
                          ),
                        );
                  }
                  return index == state.customeTabButton.length
                      ? const NoviyCheckButton()
                      : CustomeTabButton(
                          buttonIndex: state.customeTabButton[index].index,
                          docData: state.customeTabButton[index].docData,
                        );
                },
              );
            },
          ),
        )
      ],
    );
  }
}
