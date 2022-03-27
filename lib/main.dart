import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         brightness: Brightness.light,
  
      ),
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

