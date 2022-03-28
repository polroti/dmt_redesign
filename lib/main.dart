import 'package:dmt_redesign/ui-utils/config.dart';
import 'package:flutter/material.dart';


import 'screens/home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

 // const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() { 
      setState(() { });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DMT Information App',
      theme: ThemeData(
         brightness: Brightness.light,
      ),
      themeMode: currentTheme.currentTheme(),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class MyAppss extends StatelessWidget {
  const MyAppss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
         brightness: Brightness.light,
      ),
      themeMode: currentTheme.currentTheme(),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

