import 'package:flutter/material.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class MenuBarTop extends StatelessWidget {
  const MenuBarTop({super.key});

  @override
  PlutoMenuBar build(BuildContext context) {
    return PlutoMenuBar(
      backgroundColor: Colors.amber,
      height: 30,
      menus: [
        PlutoMenuItem(title: "Приход", children: [
          PlutoMenuItem(
            title: "Операции",
          ),
          PlutoMenuItem(title: "Чеки"),
          PlutoMenuItem(title: "Оплата"),
          PlutoMenuItem(title: "Смена"),
          PlutoMenuItem(title: "Касса"),
          PlutoMenuItem(title: "Горячая линия"),
          PlutoMenuItem(title: "Перемещение"),
          PlutoMenuItem(title: "Дополнительно"),
          PlutoMenuItem(title: "Настройки"),
        ]),
        PlutoMenuItem(title: "Операции"),
        PlutoMenuItem(title: "Чеки"),
        PlutoMenuItem(title: "Оплата"),
        PlutoMenuItem(title: "Смена"),
        PlutoMenuItem(title: "Касса"),
        PlutoMenuItem(title: "Горячая линия"),
        PlutoMenuItem(title: "Перемещение"),
        PlutoMenuItem(title: "Дополнительно"),
        PlutoMenuItem(title: "Настройки"),
      ],
    );
  }
}
