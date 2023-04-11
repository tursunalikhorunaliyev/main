import 'package:flutter/material.dart';

class CustomeInput extends StatelessWidget {
  final Widget suffix;
  final String hintText;
  const CustomeInput(
      {super.key, this.hintText = "", this.suffix = const SizedBox()});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Stack(
        children: [
          TextField(
            cursorHeight: 18,
            decoration: InputDecoration(
              hintText: hintText,
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
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                child: GestureDetector(
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1000),
                        lastDate: DateTime(2200),
                      );
                    },
                    child: suffix),
              ))
        ],
      ),
    );
  }
}
