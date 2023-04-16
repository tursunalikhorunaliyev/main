import 'package:flutter/material.dart';

class DataGridFooter extends StatelessWidget {
  const DataGridFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.bottomRight,
          constraints: const BoxConstraints(
            maxWidth: 40,
          ),
          decoration: const BoxDecoration(
            color: Color.fromARGB(13, 0, 0, 0),
            border: Border.symmetric(
              vertical: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          constraints: const BoxConstraints(
            minWidth: 208,
          ),
          decoration: const BoxDecoration(
            color: Color.fromARGB(13, 0, 0, 0),
            border: Border(
              right: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
          child: const Text(
            "0.00",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          constraints: const BoxConstraints(
            minWidth: 100,
          ),
          decoration: const BoxDecoration(
            color: Color.fromARGB(13, 0, 0, 0),
            border: Border(
              right: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          constraints: const BoxConstraints(
            maxWidth: 100,
          ),
          decoration: const BoxDecoration(
            color: Color.fromARGB(13, 0, 0, 0),
            border: Border(
              right: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          constraints: const BoxConstraints(
            maxWidth: 100,
          ),
          decoration: const BoxDecoration(
            color: Color.fromARGB(13, 0, 0, 0),
            border: Border(
              right: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          constraints: const BoxConstraints(
            maxWidth: 100,
          ),
          decoration: const BoxDecoration(
            color: Color.fromARGB(13, 0, 0, 0),
            border: Border(
              right: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          constraints: const BoxConstraints(
            maxWidth: 100,
          ),
          decoration: const BoxDecoration(
            color: Color.fromARGB(13, 0, 0, 0),
            border: Border(
              right: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          constraints: const BoxConstraints(
            maxWidth: 100,
          ),
          decoration: const BoxDecoration(
            color: Color.fromARGB(13, 0, 0, 0),
            border: Border(
              right: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          constraints: const BoxConstraints(
            maxWidth: 100,
          ),
          decoration: const BoxDecoration(
            color: Color.fromARGB(13, 0, 0, 0),
            border: Border(
              right: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          constraints: const BoxConstraints(
            maxWidth: 100,
          ),
          decoration: const BoxDecoration(
            color: Color.fromARGB(13, 0, 0, 0),
            border: Border(
              right: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
