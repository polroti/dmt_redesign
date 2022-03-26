import 'package:dmt_redesign/main.dart';
import 'package:dmt_redesign/ui-utils/appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomePage> {
 
 
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        appBar: appBarLight(),);
  }
}


