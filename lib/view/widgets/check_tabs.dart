import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/slider/slider_cubit_cubit.dart';
import 'package:napt_sklad/view/widgets/custome_input.dart';
import 'package:napt_sklad/view/widgets/data_grid_sell.dart';
import 'package:napt_sklad/view/widgets/footer_widget.dart';
import 'package:napt_sklad/view/widgets/pokupka_info.dart';
import 'package:provider/provider.dart';

class CheckTabs extends StatelessWidget {
  const CheckTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final sliderBloC = Provider.of<SliderCubit>(context);
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black))),
      child: Row(
        children: [
          const SizedBox(
            width: 1,
          ),
          Flexible(
            flex: 10,
            child: Column(
              children: [
                Flexible(
                  flex: 20,
                  child: DataGridMainSellList(),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  const Flexible(
                    flex: 8,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: PokupokInfo()),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.pink.shade100,
                          borderRadius: BorderRadius.circular(20)),
                      child: BlocBuilder<SliderCubit, SliderCubitData>(
                        bloc: sliderBloC,
                        builder: (context, state) {
                          return InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/cancel.png",
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("Закрит чек")
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
