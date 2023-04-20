import 'package:flutter/material.dart';

class SearchPanel extends StatelessWidget {
  const SearchPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 0.2,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Поиск",
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
        ),
        /* Row(
          children: [
           
            Transform.scale(
              scale: 0.8,
              child: Checkbox(
                value: true,
                onChanged: (isChecked) {},
                activeColor: Colors.transparent,
                checkColor: Colors.black,
                focusColor: Colors.amber,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                side: AlwaysActiveBorderSizeCheckbox(),
              ),
            ),
            const Text("Cоставной поиск"),
            Transform.scale(
              scale: 0.8,
              child: Checkbox(
                value: true,
                onChanged: (isChecked) {},
                activeColor: Colors.transparent,
                checkColor: Colors.black,
                focusColor: Colors.amber,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                side: AlwaysActiveBorderSizeCheckbox(),
              ),
            ),
            const Text("Штучно"),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 200,
                child: CustomeInputDatePicker(
                  hintText: "01.12.2022",
                  suffix: Image.asset(
                    "assets/calendar.png",
                    width: 32,
                    height: 32,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Поиск",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
            ),
          ],
        ), */

        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(80, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          onPressed: () {},
          child: const Icon(Icons.print_sharp),
        )
      ],
    );
  }
}
