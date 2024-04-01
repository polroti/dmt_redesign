import 'package:dmt_redesign/ui-utils/config.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appBarLight(BuildContext context) {
  return AppBar(
    //   toolbarHeight: 70,
    backgroundColor: Theme.of(context).brightness == Brightness.dark
        ? Colors.black
        : Colors.white,
    elevation: 0,
    title: Text(
      'Vehicle Information',
      style: TextStyle(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : const Color.fromRGBO(161, 32, 26, 1),
      ),
    ),
    actions: <Widget>[
      IconButton(
          onPressed: () => {currentTheme.switchTheme()},
          icon: getThemeSwitcherIcon(context))
    ],
  );
}

Widget getThemeSwitcherIcon(BuildContext context) {
  if (Theme.of(context).brightness == Brightness.dark) {
    return const Icon(Icons.light_mode);
  }

  return const Icon(Icons.dark_mode);
}

Widget getMenuItemIcon(String choice, BuildContext context) {
  Widget icon = const Icon(Icons.abc);
  switch (choice) {
    case 'Language':
      icon = Icon(
        Icons.translate,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : const Color.fromRGBO(161, 32, 26, 1),
      );
      break;

    case 'Theme':
      icon = Theme.of(context).brightness == Brightness.dark
          ? const Icon(Icons.light_mode, color: Colors.white)
          : const Icon(
              Icons.dark_mode,
              color: Color.fromRGBO(161, 32, 26, 1),
            );
      break;

    case 'Help':
      icon = Icon(
        Icons.help,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : const Color.fromRGBO(161, 32, 26, 1),
      );
      break;
    case 'About':
      icon = Icon(
        Icons.info,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : const Color.fromRGBO(161, 32, 26, 1),
      );
      break;
  }
  return icon;
}
