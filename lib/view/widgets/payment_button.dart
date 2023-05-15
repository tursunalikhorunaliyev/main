import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:napt_sklad/controller/data/service/feathers.dart';

class PaymentButton extends StatelessWidget {
  final String imagePath;
  final String hotKeyText;
  final String buttonText;
  const PaymentButton(
      {super.key,
      required this.imagePath,
      this.hotKeyText = "",
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Tooltip(
        message: buttonText,
        height: 20,
        child: InkWell(
          onTap: () {
            FeathersService().listCheckDoc();
          },
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.asset(
                    imagePath,
                    width: 30,
                    height: 30,
                  ),
                ),
                hotKeyText.isNotEmpty
                    ? Text(
                        hotKeyText,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      )
                    : const SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
