import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Tooltip(
      message: buttonText,
      height: 20,
      child: InkWell(
        onTap: () {},
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                cacheHeight: 30,
              ),
              hotKeyText.isNotEmpty ? Text(hotKeyText) : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
