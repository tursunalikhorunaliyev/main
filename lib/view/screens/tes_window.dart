import 'dart:developer';

import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int selectedIndex = -1;
  bool isSelected = false;
  String data = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    return Scaffold(
        body: Center(
      child: RawKeyboardListener(
        autofocus: focusNode.hasFocus,
        focusNode: focusNode,
        onKey: (value) {
         
        },
        child: GestureDetector(
          onTap: () {
            focusNode.requestFocus();
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
          ),
        ),
      ),
    ));
  }
}
