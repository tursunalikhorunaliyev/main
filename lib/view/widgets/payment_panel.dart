import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:napt_sklad/view/widgets/payment_button.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class PaymentPanel extends StatelessWidget {
  const PaymentPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(
          height: 5,
        ),
        Text(
          DateTime.now().toString().split(" ")[0].toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        DigitalClock(
          is24HourTimeFormat: true,
          hourMinuteDigitTextStyle: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
          colon: const Text(
            ":",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          secondDigitTextStyle: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w200,
          ),
          digitAnimationStyle: Curves.fastLinearToSlowEaseIn,
        ),
        Column(
          children: const [
            PaymentButton(
              imagePath: "assets/cash.png",
              hotKeyText: "F8",
              buttonText: "Наличные",
            ),
            PaymentButton(
              imagePath: "assets/humo.png",
              hotKeyText: "F9",
              buttonText: "Humo",
            ),
            PaymentButton(
              imagePath: "assets/uzcard.png",
              hotKeyText: "F10",
              buttonText: "UzCard",
            ),
            PaymentButton(
              imagePath: "assets/phonelink.png",
              hotKeyText: "F11",
              buttonText: "Прочее",
            ),
            PaymentButton(
              imagePath: "assets/info.png",
              hotKeyText: "F12",
              buttonText: "Страховка",
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
