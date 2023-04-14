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
        Column(
          children: const [
            PaymentButton(
              imagePath: "assets/cash.png",
              buttonText: "Наличные F8",
            ),
            PaymentButton(
              imagePath: "assets/humo.png",
              buttonText: "Humo F9",
            ),
            PaymentButton(
              imagePath: "assets/uzcard.png",
              buttonText: "UzCard F10",
            ),
            PaymentButton(
              imagePath: "assets/phonelink.png",
              buttonText: "Прочее F11",
            ),
            PaymentButton(
              imagePath: "assets/info.png",
              buttonText: "Страховка F12",
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: const [
            PaymentButton(
              imagePath: "assets/vozvrat.png",
              buttonText: "Возврат от\nпокупателя",
            ),
            PaymentButton(
              imagePath: "assets/exit.png",
              buttonText: "Выход",
            ),
          ],
        )
      ],
    );
  }
}
