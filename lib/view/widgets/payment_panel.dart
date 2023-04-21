import 'package:flutter/material.dart';
import 'package:napt_sklad/service/month_name.dart';
import 'package:napt_sklad/view/widgets/payment_button.dart';

class PaymentPanel extends StatelessWidget {
  const PaymentPanel({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dateData = MonthName.getData(DateTime.now());
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
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
              buttonText: "Возврат от покупателя",
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
