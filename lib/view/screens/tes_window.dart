import 'package:flutter/material.dart';

import '../../controller/data/connection_data.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int selectedIndex = -1;
  bool isSelected = false;

  getData() async {
    final response = await Api.feathers().find(serviceName: "memories", query: {
      "oid": "yjmgJUmDo_kn9uxVi8s9Mj9mgGRJISxRt63wT46NyTQ",
      "ctx": const ['drugs'],
      "search": "крем для рук"
    });
    print(response.toString());
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

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
