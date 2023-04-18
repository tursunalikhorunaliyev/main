import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:napt_sklad/view/widgets/check_tabs.dart';
import 'package:napt_sklad/view/widgets/data_grid_sell.dart';
import 'package:napt_sklad/view/widgets/noviy_check_button.dart';
part 'slider_cubit_state.dart';

class SliderCubit extends Cubit<SliderCubitData> {
  SliderCubit()
      : super(SliderCubitData(
            dataGridPanels: [const CheckTabs()],
            checkTabs: [const NoviyCheckButton()],
            pageController: PageController()));
}
