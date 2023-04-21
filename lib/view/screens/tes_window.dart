import 'dart:developer';

import 'package:flutter/material.dart';

import '../../controller/data/connection_data.dart';
import 'package:http/http.dart' as http;

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int selectedIndex = -1;
  bool isSelected = false;

  getData() async {
    var response =
        await Api.feathers().create(serviceName: "authentication", data: {
      "strategy": "local",
      "email": "test",
      "password": "test",
    });
    log(response.toString());
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
