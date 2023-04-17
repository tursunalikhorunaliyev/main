import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int selectedIndex = -1;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          10,
          (index) => Checkbox(
            value: selectedIndex == index ? isSelected : false,
            onChanged: (value) {
              isSelected = !isSelected;
              selectedIndex = index;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
