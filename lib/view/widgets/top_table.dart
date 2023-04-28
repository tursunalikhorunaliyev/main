import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napt_sklad/controller/cubits/sell_data/sell_data_cubit.dart';

class TopTable extends StatelessWidget {
  final int tableIndex;
  final SellDataCubit sellDataCubit;
  const TopTable(
      {super.key, required this.tableIndex, required this.sellDataCubit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rowHeader(),
        Expanded(
          child: BlocBuilder<SellDataCubit, SellDataState>(
            bloc: sellDataCubit,
            builder: (context, state) {
              state as SellData;
              return ListView.builder(
                addAutomaticKeepAlives: true,
                scrollDirection: Axis.vertical,
                itemCount: state.topDataGridRow.length,
                itemBuilder: (context, index) => state.topDataGridRow[index],
              );
            },
          ),
        )
      ],
    );
  }

  Widget rowHeader() {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Flexible(
            flex: 18,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "Полное наимование",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "Кол-во",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "Цена",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "Сумма",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "Срок год",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "Серия",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "МХ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "ИКПУ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 218, 218),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: const Text(
                "Марк",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
