import 'package:dmt_redesign/ui-utils/config.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DMT Information App',
      theme: ThemeData(
          primarySwatch: mycolor,
          //brightness: Brightness.dark,
          iconTheme: const IconThemeData(color: Colors.purpleAccent)),
      themeMode: currentTheme.currentTheme(),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }

  MaterialColor mycolor = MaterialColor(
    const Color.fromRGBO(161, 32, 26, 1).value,
    const <int, Color>{
      50: Color.fromRGBO(0, 137, 123, 0.1),
      100: Color.fromRGBO(0, 137, 123, 0.2),
      200: Color.fromRGBO(0, 137, 123, 0.3),
      300: Color.fromRGBO(0, 137, 123, 0.4),
      400: Color.fromRGBO(0, 137, 123, 0.5),
      500: Color.fromRGBO(0, 137, 123, 0.6),
      600: Color.fromRGBO(0, 137, 123, 0.7),
      700: Color.fromRGBO(0, 137, 123, 0.8),
      800: Color.fromRGBO(0, 137, 123, 0.9),
      900: Color.fromRGBO(0, 137, 123, 1),
    },
  );
}
