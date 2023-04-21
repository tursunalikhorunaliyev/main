import 'package:flutter/material.dart';
import 'package:napt_sklad/view/widgets/custome_clock.dart';

class PokupokInfo extends StatelessWidget {
  const PokupokInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomeClock(),
        Container(
          alignment: Alignment.topLeft,
          child: const Text("Сумма"),
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
          child: const Text("Скидка"),
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
            "К оплата",
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
