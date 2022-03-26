import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator HomeWidget - FRAME

    return Container(
        width: 360,
        height: 800,
        decoration: const BoxDecoration(
          color:  Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 143,
              left: 20,
              child: SizedBox(
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
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: const Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              ),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              border: Border.all(
                                color: const Color.fromRGBO(161, 32, 26, 1),
                                width: 2,
                              ),
                            ))),
                    Positioned(
                        top: 23,
                        left: 123,
                        child: Container(
                            width: 68,
                            height: 57,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/Image5.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    const Positioned(
                        top: 103,
                        left: 68
                        ,
                        child:  Text(
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
                  ]))),
          Positioned(
              top: 701,
              left: 117,
              child: Container(
                  width: 141,
                  height: 30,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 1,
                        left: 0,
                        child: Container(
                            width: 19.834999084472656,
                            height: 28.169031143188477,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/Image2.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 0,
                        left: 28,
                        child: Container(
                            width: 113,
                            height: 30,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 113,
                                      height: 30,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 113,
                                                height: 30,
                                                child: Stack(children: const <
                                                    Widget>[
                                                  Positioned(
                                                      top: 23,
                                                      left: 7,
                                                      child: Text(
                                                        'DEPARTMENT OF MOTOR TRAFFIC',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    161,
                                                                    32,
                                                                    26,
                                                                    1),
                                                            fontFamily:
                                                                'Roboto',
                                                            fontSize: 6,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height: 1),
                                                      )),
                                                  Positioned(
                                                      top: 11,
                                                      left: 7,
                                                      child: Text(
                                                        'போக்குவரத்து திணைக்களம்.',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    161,
                                                                    32,
                                                                    26,
                                                                    1),
                                                            fontFamily:
                                                                'Noto Sans Sinhala',
                                                            fontSize: 6,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height: 1),
                                                      )),
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Text(
                                                        'මෝටර් රථ ප්‍රවාහන දෙපාර්තමේන්තුව  ',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    161,
                                                                    32,
                                                                    26,
                                                                    1),
                                                            fontFamily:
                                                                'Noto Sans Sinhala',
                                                            fontSize: 6,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height: 1),
                                                      )),
                                                ]))),
                                      ]))),
                            ]))),
                  ]))),
          Positioned(
              top: 312,
              left: 20,
              child: Container(
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
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              ),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              border: Border.all(
                                color: const Color.fromRGBO(161, 32, 26, 1),
                                width: 2,
                              ),
                            ))),
                    Positioned(
                        top: 30,
                        left: 113,
                        child: Container(
                            width: 87,
                            height: 56,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/Image3.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    const Positioned(
                        top: 108,
                        left: 80,
                        child: Text(
                          'VEHICLE DETAILS',
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
                  ]))),
          Positioned(
              top: 481,
              left: 20,
              child: Container(
                  width: 321,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(161, 32, 26, 1),
                      width: 2,
                    ),
                  ))),
          Positioned(
              top: 505,
              left: 140,
              child: Container(
                  width: 80,
                  height: 62,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Image1.png'),
                        fit: BoxFit.fitWidth),
                  ))),
          const Positioned(
              top: 585,
              left: 68,
              child: Text(
                'REVENUE LICENSE STATUS',
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
          Positioned(
              top: 56,
              left: 323,
              child: Container(
                  width: 36,
                  height: 36,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                    Positioned(
                      top: 6,
                      left: 15,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                  ]))),
          Positioned(
              top: 47,
              left: 20,
              child: Container(
                  width: 55,
                  height: 55,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 55,
                            height: 55,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: const Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 4),
                                    blurRadius: 4)
                              ],
                              image: const DecorationImage(
                                  image: const AssetImage(
                                      'assets/images/Image4.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                  ]))),
        ]));
  }
}
