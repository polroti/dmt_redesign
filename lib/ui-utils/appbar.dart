import 'package:flutter/material.dart';
import 'package:get/get.dart';

var menuItems = <String>['Language', 'Theme', 'Help'];

//light

PreferredSizeWidget appBarLight() {
  return AppBar(
    toolbarHeight: 70,
    backgroundColor:
        Get.isDarkMode ? Colors.black : const Color.fromRGBO(161, 32, 26, 1),
    elevation: 0,
    title: const Text('Vehicle Information'),
    actions: <Widget>[
      PopupMenuButton(
          onCanceled: () => print('cancelled'),
          onSelected: onMenuItemSelect,
          itemBuilder: (BuildContext context) {
            return menuItems.map((String choice) {
              return PopupMenuItem<String>(
                  child: Row(children: [
                    getMenuItemIcon(choice),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      choice.toUpperCase(),
                      style: TextStyle(
                        color: Get.isDarkMode
                            ? Colors.white
                            : const Color.fromRGBO(161, 32, 26, 1),
                      ),
                    )
                  ]),
                  value: choice);
            }).toList();
          })
    ],
  );
}

Widget getMenuItemIcon(String choice) {
  Widget icon = const Icon(Icons.abc);
  switch (choice) {
    case 'Language':
      icon = Icon(
        Icons.translate,
        color: Get.isDarkMode
            ? Colors.white
            : const Color.fromRGBO(161, 32, 26, 1),
      );
      break;

    case 'Theme':
      icon = Get.isDarkMode
          ? const Icon(Icons.light_mode, color: Colors.white)
          : const Icon(
              Icons.dark_mode,
              color: Color.fromRGBO(161, 32, 26, 1),
            );
      break;

    case 'Help':
      icon = Icon(
        Icons.help,
        color: Get.isDarkMode
            ? Colors.white
            : const Color.fromRGBO(161, 32, 26, 1),
      );
      break;
  }
  return icon;
}

void onMenuItemSelect(item) {
  switch (item) {
    case 'Language':
      print('Language');
      break;

    case 'Theme':
      Get.isDarkMode
          ? Get.changeTheme(ThemeData.light())
          : Get.changeTheme(ThemeData.dark());
      break;

    case 'Help':
      print('Help');
      break;
  }
}
