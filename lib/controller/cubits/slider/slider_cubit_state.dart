// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'slider_cubit_cubit.dart';

abstract class SliderCubitState {}

class SliderCubitData extends SliderCubitState {
  final List<Widget> dataGridPanels;
  final List<Widget> checkTabs;
  final PageController pageController;

  SliderCubitData({
    required this.dataGridPanels,
    required this.checkTabs,
    required this.pageController,
  });
}
