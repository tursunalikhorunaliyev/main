import 'package:flutter/material.dart';

class TopTable extends StatelessWidget {
  const TopTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rowHeader(),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 1000,
            itemBuilder: (context, index) => row(),
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

  Widget row() {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Flexible(
            flex: 18,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 131, 175),
                border: Border.all(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
