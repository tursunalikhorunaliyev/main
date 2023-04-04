import 'package:flutter/material.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PlutoMenuBar(height: 30, menus: [
            PlutoMenuItem(title: "title"),
            PlutoMenuItem(title: "title"),
            PlutoMenuItem(title: "title"),
            PlutoMenuItem(title: "title"),
            PlutoMenuItem(title: "title"),
            PlutoMenuItem(title: "title"),
          ]),
          Flexible(
            flex: 5,
            child: Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Color.fromARGB(255, 35, 0, 212),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
