import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/search_cubit/search_cubit_cubit.dart';
import 'package:napt_sklad/controller/provider/focus_nodes.dart';
import 'package:provider/provider.dart';

class SearchPanel extends StatelessWidget {
  const SearchPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final searchCubit = BlocProvider.of<SearchCubit>(context);
    final focusNodes = Provider.of<FocusNodesProvider>(context);

    return TextField(
      autofocus: focusNodes.focusNodeSearchBox.hasFocus,
      focusNode: focusNodes.focusNodeSearchBox,
      onChanged: (value) {
        searchCubit.getData(value);
      },
      decoration: InputDecoration(
        hintText: "Поиск",
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
    );
  }
}
