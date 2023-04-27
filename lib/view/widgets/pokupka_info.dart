// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_cubit.dart';
import 'package:napt_sklad/controller/cubits/tab_button/tab_button_index_dart_state.dart';
import 'package:napt_sklad/controller/data/model/tables/sell_model_test.dart';
import 'package:napt_sklad/view/widgets/custome_clock.dart';

class PokupokInfo extends StatelessWidget {
  final PaymentDetails paymentDetails;
  const PokupokInfo({
    Key? key,
    required this.paymentDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabButtonCubit =
        BlocProvider.of<TabButtonIndexDartCubit>(context, listen: false);
    return ColoredBox(
      color: const Color.fromARGB(255, 135, 33, 243),
      child: SizedBox(
        width: 250,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              const CustomeClock(),
              Container(
                alignment: Alignment.topLeft,
                child: const Text("Сумма"),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: const Text(
                  "0.00",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text("Скидка"),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: const Text(
                  "0.00",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "К оплата",
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: const Text(
                  "0.00",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              const Divider(
                color: Colors.black26,
                thickness: 1,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(80, 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: const Icon(Icons.print_sharp),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 5,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.pink.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/cancel.png",
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("Закрыть")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
