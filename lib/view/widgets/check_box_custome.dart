import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/checkbox_border.dart';
import 'package:napt_sklad/controller/cubits/checkbox/check_box_cubit_dart_cubit.dart';
import 'package:napt_sklad/controller/enums/check_box_enum.dart';
import 'package:provider/provider.dart';

class CustomeCheckBox extends StatelessWidget {
  final CheckBoxAction checkBoxAction;
  final int checkboxIndex;

  const CustomeCheckBox({
    super.key,
    required this.checkBoxAction,
    this.checkboxIndex = -1,
  });

  @override
  Widget build(BuildContext context) {
    final checkBoxProvider = Provider.of<CheckBoxCubit>(context);
    return BlocBuilder<CheckBoxCubit, bool>(
      bloc: checkBoxProvider,
      builder: (context, state) {
        return Checkbox(
          value: state,
          onChanged: (isChecked) {
            checkBoxProvider.emit(!state);
          },
          activeColor: Colors.transparent,
          checkColor: Colors.black,
          focusColor: Colors.amber,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          side: AlwaysActiveBorderSizeCheckbox(),
        );
      },
    );
  }
}
