import 'package:flutter/material.dart';


class RevenueLicensePage extends StatefulWidget {
  const RevenueLicensePage({Key? key}) : super(key: key);

  @override
  State<RevenueLicensePage> createState() => _RevenueLicensePageState();
}

class _RevenueLicensePageState extends State<RevenueLicensePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const  Text("Revenue License Status")),
    );
  }
}