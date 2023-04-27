import 'dart:developer';

import 'package:flutter/material.dart';

class NoviyCheckButton extends StatelessWidget {
  const NoviyCheckButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          alignment: Alignment.center,
          color: const Color.fromARGB(255, 0, 151, 50),
          child: const Text(
            "Новый чек",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
