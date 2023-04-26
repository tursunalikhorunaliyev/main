import 'package:flutter/material.dart';
import 'package:napt_sklad/service/datagrid_content.dart';
import 'package:napt_sklad/view/widgets/pokupka_info.dart';
import 'package:napt_sklad/view/widgets/top_table.dart';

class CheckTabs extends StatelessWidget {
  const CheckTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TopTable(sellDataModel: DataGridContent.testDataModelSell),
        ),
        const SizedBox(
          width: 250,
          child: PokupokInfo(),
        ),
      ],
    );
  }
}
