import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide MenuBar hide MenuStyle;
import 'package:menu_bar/menu_bar.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: NavigationView(
        appBar: NavigationAppBar(
            actions: PlutoMenuBar(
          menus: [
            PlutoMenuItem(title: "Data"),
            PlutoMenuItem(title: "Data"),
            PlutoMenuItem(title: "Data"),
            PlutoMenuItem(title: "Data"),
            PlutoMenuItem(title: "Data"),
            PlutoMenuItem(title: "Data"),
            PlutoMenuItem(title: "Data"),
            PlutoMenuItem(title: "Data"),
            PlutoMenuItem(title: "Data"),
            PlutoMenuItem(title: "Data"),
          ],
          height: 30,
        )),
        content: const Text("data"),
      ),
    );
  }
}
