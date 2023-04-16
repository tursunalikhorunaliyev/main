import 'package:flutter/material.dart';

class GridColumns extends StatelessWidget {
  final String text;
  const GridColumns({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
