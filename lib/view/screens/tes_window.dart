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
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Container(
                  height: 45,
                  color: Colors.amber,
                ),
                Container(
                  height: 40,
                  color: Colors.deepOrangeAccent,
                ),
                Expanded(
                  child: Container(
                    color: Colors.pink,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 60,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
