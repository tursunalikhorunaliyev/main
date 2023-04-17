part of 'check_box_cubit_dart_cubit.dart';

@immutable
abstract class CheckBoxCubitDartState {}

class CheckBoxCubitDartInitial extends CheckBoxCubitDartState {
  final bool isChecked;
  final int changedIndex;

  CheckBoxCubitDartInitial({
    required this.isChecked,
    required this.changedIndex,
  });
}
