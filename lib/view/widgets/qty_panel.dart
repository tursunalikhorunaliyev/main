import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QtyPanel extends StatelessWidget {
  final String drugName;
  final String drugCompany;
  final String sena;
  final String seriya;
  final String srokGod;
  final int ostatok;
  const QtyPanel({
    super.key,
    required this.drugName,
    required this.drugCompany,
    required this.sena,
    required this.seriya,
    required this.srokGod,
    required this.ostatok,
  });

  @override
  Widget build(BuildContext context) {
    final kolichestvoTextController = TextEditingController();
    var summaTextController = TextEditingController(text: "0.00");
    log("eeeeeeeeeeeeeeeeeeeeee");
    return SizedBox(
      height: 325,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 400,
                    child: Text(
                      drugName,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Color(0xFF0E0631),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    drugCompany,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xFF0E0631),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sena",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF0E0631),
                    ),
                  ),
                  Text(
                    sena,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(0xFF0E0631),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Seriya",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF0E0631),
                    ),
                  ),
                  Text(
                    seriya,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(0xFF0E0631),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Srok godnost",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF0E0631),
                    ),
                  ),
                  Text(
                    srokGod,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(0xFF0E0631),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Ostatok",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF0E0631),
                    ),
                  ),
                  Text(
                    ostatok.toString(),
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color(0xFF0E0631),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 50,
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 150,
                child: RawKeyboardListener(
                  focusNode: FocusNode(),
                  autofocus: true,
                  onKey: (value) {
                    if (value.isKeyPressed(LogicalKeyboardKey.backspace) &&
                        kolichestvoTextController.text.length == 1) {
                      summaTextController.value =
                          const TextEditingValue(text: "0.00");
                    }
                  },
                  child: TextField(
                    controller: kolichestvoTextController,
                    onChanged: (value) {
                      int a = (int.parse(value)) *
                          int.parse(sena.substring(0, sena.length - 3));
                      log(a.toString());
                      summaTextController.value =
                          TextEditingValue(text: a.toString());
                    },
                    cursorColor: const Color(0xFFD9D9D9),
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0E0631),
                    ),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "0",
                      hintStyle: TextStyle(
                        fontSize: 40,
                      ),
                      labelText: "Kolichestvo",
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                      contentPadding: EdgeInsets.only(bottom: 10),
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      floatingLabelStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF0E0631),
                        fontWeight: FontWeight.w300,
                      ),
                      border: UnderlineInputBorder(),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFD9D9D9),
                          width: 3,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFD9D9D9),
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: summaTextController,
                  textDirection: TextDirection.rtl,
                  cursorColor: const Color(0xFFD9D9D9),
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0E0631),
                  ),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Summa",
                    labelStyle: TextStyle(
                      fontSize: 20,
                    ),
                    contentPadding: EdgeInsets.only(bottom: 10),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF0E0631),
                      fontWeight: FontWeight.w300,
                    ),
                    border: UnderlineInputBorder(),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFD9D9D9),
                        width: 3,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFD9D9D9),
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
