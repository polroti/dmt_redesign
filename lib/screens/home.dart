import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator HomeWidget - FRAME
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:  40,
          backgroundColor: const Color.fromRGBO(161, 32, 26, 1),
          elevation: 0,
          leading: Padding(padding: const EdgeInsets.all(5.0), child: Image.asset(
            'assets/images/Image4.png',

            alignment: Alignment.bottomLeft,
          ),)),
    );
  }
}

help() {}

swithTheme() {}

changeLanguage() {}
