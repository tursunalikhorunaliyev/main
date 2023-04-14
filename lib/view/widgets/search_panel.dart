import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:napt_sklad/controller/checkbox_border.dart';
import 'package:napt_sklad/view/widgets/custome_input.dart';
import 'package:napt_sklad/view/widgets/custome_input_date_picker.dart';

class SearchPanel extends StatelessWidget {
  const SearchPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black,
      )),
      child: Row(
        children: [
          const SizedBox(
            width: 0.2,
          ),
          Row(
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "",
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
              const Text("Sostavnoy poisk"),
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
              const Text("Shtuchno"),
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
                    hintText: "",
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
          ),
          const Spacer(),
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
      ),
    );
  }
}
