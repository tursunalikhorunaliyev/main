import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:napt_sklad/view/widgets/payment_button.dart';

class PaymentPanel extends StatelessWidget {
  const PaymentPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text(
              "01.12.2022",
              style: GoogleFonts.ubuntu(
                fontSize: 18,
              ),
            ),
            Text(
              "01.12.2022",
              style: GoogleFonts.ubuntu(
                fontSize: 18,
              ),
            ),
            Text(
              "01.12.2022",
              style: GoogleFonts.ubuntu(
                fontSize: 18,
              ),
            ),
            const PaymentButton(
              imagePath: "assets/cash.png",
              buttonText: "Nalichie F9",
            ),
            const PaymentButton(
              imagePath: "assets/humo.png",
              buttonText: "Humo F8",
            ),
            const PaymentButton(
              imagePath: "assets/uzcard.png",
              buttonText: "Humo F10",
            ),
          ],
        )
      ],
    );
  }
}
