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
            child: onGoingNumber(context)),
      ),
    );
  }
}

Widget onGoingNumber(BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.max,
    children: [
      Expanded(
          child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 36),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ongoingNumberWidget(context, 'ON'),
                  ongoingNumberWidget(context, 'VD'),
                  ongoingNumberWidget(context, 'RS'),
                  
                  //govtLabel()
                ],
              ),
            ))
          ],
        ),
      ))
    ],
  );

  // Figma Flutter Generator Group28Widget - GROUP
}

Widget ongoingNumberWidget(BuildContext context, String type) {
  return Expanded(
      child: Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 36),
    child: GestureDetector(
      onTap: () {
        switch (type) {
          case 'ON':
            print('ONGOING NUMBER');
            break;
          case 'VD':
            print('VEHICLE DETAILS');
            break;
          case 'RS':
            print('REVENUE LICENSE STATUS');
            break;
        }
      },
      child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Container(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ImageIcon(
                          getCardIcon(type),
                          size: 140,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? const Color.fromRGBO(255, 255, 255, 1)
                              : const Color.fromRGBO(161, 32, 26, 1),
                        )
                        //Image.asset('assets/images/Image5.png'),
                        ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 5),
                      child: Text(
                        getCardLabel(type),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? const Color.fromRGBO(255, 255, 255, 1)
                                    : const Color.fromRGBO(161, 32, 26, 1),
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1),
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).brightness == Brightness.dark
                    ? const Color.fromRGBO(161, 32, 26, 1)
                    : const Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : const Color.fromRGBO(161, 32, 26, 1),
                  width: 2,
                ),
              ))),
    ),
  ));
}

String getCardLabel(String type) {
  switch (type) {
    case 'ON':
      return  'ONGOING NUMBER';
    case 'VD':
      return 'VEHICLE DETAILS';
    case 'RS':
      return 'REVENUE LICENSE STATUS';
  }
  return 'ERROR LOADING LABEL';
}

AssetImage getCardIcon(String type) {
  switch (type) {
    case 'ON':
      return const AssetImage('assets/images/Image5.png');
    case 'VD':
      return const AssetImage('assets/images/Image3.png');
    case 'RS':
      return const AssetImage('assets/images/Image1.png');
  }
  return const AssetImage('assets/images/Image4.png');
}

Widget govtLabel(){
  return Positioned(
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
                  ])));
          
}