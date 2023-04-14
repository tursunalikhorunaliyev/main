import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentButton extends StatelessWidget {
  final String imagePath;
  final String buttonText;
  const PaymentButton(
      {super.key, required this.imagePath, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              cacheHeight: 50,
            ),
            Text(
              buttonText,
              style: GoogleFonts.ubuntu(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
