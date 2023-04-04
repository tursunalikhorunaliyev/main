import 'package:flutter/material.dart';

class CustomeInput extends StatelessWidget {
  final Widget suffix;
  const CustomeInput({super.key, this.suffix = const SizedBox()});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Stack(
        children: [
          TextField(
            cursorHeight: 18,
            decoration: InputDecoration(
              hintText: "0",
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              filled: true,
              fillColor: const Color.fromARGB(255, 235, 235, 235),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          suffix
        ],
      ),
    );
  }
}
