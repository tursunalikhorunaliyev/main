import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/data/model/tables/sold_model_test.dart';

class BottomTable extends StatelessWidget {
  final List<SoldDataModel> soldDataModel;
  const BottomTable({
    super.key,
    required this.soldDataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rowHeader(),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: soldDataModel.length,
            itemBuilder: (context, index) => row(soldDataModel[index]),
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
                "УП",
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
                "Остаток",
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
                "Акция",
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

  Widget row(SoldDataModel dataModel) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Flexible(
            flex: 18,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Text(
                dataModel.polnoeNaimovaniye,
                style: const TextStyle(
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
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Text(
                dataModel.up.toString(),
                style: const TextStyle(
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
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Text(
                dataModel.sena.toString(),
                style: const TextStyle(
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
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Text(
                dataModel.ostatok.toString(),
                style: const TextStyle(
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
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Text(
                dataModel.seriya,
                style: const TextStyle(
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
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Text(
                dataModel.srok,
                style: const TextStyle(
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
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Text(
                dataModel.mx,
                style: const TextStyle(
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
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Text(
                dataModel.ikpu,
                style: const TextStyle(
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
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
              child: Text(
                dataModel.aksiya,
                style: const TextStyle(
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
