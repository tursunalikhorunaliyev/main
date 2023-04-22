import 'package:flutter/material.dart';

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
          onTap: () {},
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
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
