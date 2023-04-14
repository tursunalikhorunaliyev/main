import 'package:flutter/material.dart';

class PokupokInfo extends StatelessWidget {
  const PokupokInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: const Text("Summa"),
        ),
        Container(
          alignment: Alignment.bottomRight,
          child: const Text(
            "0.00",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        const Divider(
          color: Colors.black26,
          thickness: 1,
        ),
        Container(
          alignment: Alignment.topLeft,
          child: const Text("Skidka"),
        ),
        Container(
          alignment: Alignment.bottomRight,
          child: const Text(
            "0.00",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        const Divider(
          color: Colors.black26,
          thickness: 1,
        ),
        Container(
          alignment: Alignment.topLeft,
          child: const Text(
            "K Oplata",
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          child: const Text(
            "0.00",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        const Divider(
          color: Colors.black26,
          thickness: 1,
        ),
      ],
    );
  }
}
