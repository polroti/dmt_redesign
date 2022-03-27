import 'package:dmt_redesign/ui-utils/appbar.dart';
import 'package:dmt_redesign/ui-utils/config.dart';
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
        appBar: appBarLight(context),
        body: Center(
          child: Container(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.black
                : Colors.white,
            child: Stack(
              children: [onGoingNumber()],
            ),
          ),
        ));
  }
}

Widget onGoingNumber() {
  // Figma Flutter Generator Group28Widget - GROUP
  return Container(
      width: 321,
      height: 140,
      child: Stack(children: <Widget>[
        Positioned(
            top: 0,
            left: 0,
            child: Container(
                width: 321,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: Color.fromRGBO(161, 32, 26, 1),
                    width: 2,
                  ),
                ))),
        Positioned(
            top: 23,
            left: 123,
            child: Container(
                width: 68,
                height: 57,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Image5.png'),
                      fit: BoxFit.fitWidth),
                ))),
        Positioned(
            top: 103,
            left: 63,
            child: Text(
              'ONGOING NUMBER',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(160, 42, 37, 1),
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            )),
      ]));
}
