import 'package:flutter/material.dart';

class SearchPanel extends StatelessWidget {
  const SearchPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 0.2,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Поиск",
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
