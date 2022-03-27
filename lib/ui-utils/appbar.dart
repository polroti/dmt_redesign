import 'package:dmt_redesign/ui-utils/config.dart';
import 'package:flutter/material.dart';


var menuItems = <String>['Language', 'Theme', 'Help'];

//light

PreferredSizeWidget appBarLight(BuildContext context) {
  return AppBar(
    toolbarHeight: 70,
    backgroundColor:
         Theme.of(context).brightness == Brightness.dark  ? Colors.black : const Color.fromRGBO(161, 32, 26, 1),
    elevation: 0,
    title: const Text('Vehicle Information'),
    actions: <Widget>[
      PopupMenuButton(
         // onCanceled: () => print('cancelled'),
          onSelected: onMenuItemSelect,
          itemBuilder: (BuildContext context) {
            return menuItems.map((String choice) {
              return PopupMenuItem<String>(
                  child: Row(children: [
                    getMenuItemIcon(choice,context),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      choice.toUpperCase(),
                      style: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark 
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

Widget getMenuItemIcon(String choice, BuildContext context) {
  Widget icon = const Icon(Icons.abc);
  switch (choice) {
    case 'Language':
      icon = Icon(
        Icons.translate,
        color:  Theme.of(context).brightness == Brightness.dark 
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
        color:  Theme.of(context).brightness == Brightness.dark 
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
     currentTheme.switchTheme();
      break;

    case 'Help':
      print('Help');
      break;
  }
}
