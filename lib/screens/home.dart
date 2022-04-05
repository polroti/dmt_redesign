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
                  ongoingNumberWidget(context),
                  ongoingNumberWidget(context),
                  ongoingNumberWidget(context),
                  const Text('beenu')
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

Widget ongoingNumberWidget(BuildContext context) {
  return Expanded(
      child: Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 36),
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
                        const AssetImage('assets/images/Image5.png'),
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
                      'ONGOING NUMBER',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Theme.of(context).brightness == Brightness.dark
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
  ));
}
