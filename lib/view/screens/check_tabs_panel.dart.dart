// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:napt_sklad/controller/cubits/slider/slider_cubit_cubit.dart';
import 'package:napt_sklad/view/widgets/check_tabs.dart';
import 'package:provider/provider.dart';

class CheckTabsPanel extends StatelessWidget {
  const CheckTabsPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final checkProvider = Provider.of<SliderCubit>(context);
    return BlocBuilder<SliderCubit, SliderCubitData>(
      bloc: checkProvider,
      builder: (context, state) {
        log(state.contentLength.toString());

        if (state.contentLength > 1) {
          state.pageController.animateToPage(
            state.contentLength - 1,
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastLinearToSlowEaseIn,
          );
        }

        return Column(children: [
          Flexible(
            child: PageView.builder(
              controller: state.pageController,
              scrollDirection: Axis.horizontal,
              itemCount: state.contentLength,
              itemBuilder: (context, index) {
                return const CheckTabs();
              },
            ),
          ),
          SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.contentLength,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    final slideData = SliderCubitData(state.contentLength + 1,
                        state.pageIndex, state.pageController);
                    checkProvider.emit(slideData);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 1),
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      color: const Color.fromARGB(255, 0, 151, 50),
                      child: const Text(
                        "Новый чек",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ]);
      },
    );
  }
}
