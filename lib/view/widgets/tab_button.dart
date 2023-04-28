import 'dart:developer';

import 'package:flutter/material.dart';

class CustomeTabButton extends StatelessWidget {
  final int buttonIndex;
  final DateTime creationTime;
  const CustomeTabButton(
      {super.key, required this.buttonIndex, required this.creationTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        width: 120,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.amber,
          border: Border.symmetric(
              vertical: BorderSide(
            color: Colors.black,
            width: 1,
          )),
        ),
        child: Text(
          creationTime.toString().split(" ")[1].split(".")[0],
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
