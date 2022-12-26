import 'package:dmt_redesign/screens/home/widgets/ongoing_number_container.dart';
import 'package:dmt_redesign/screens/home/widgets/revenue_status_container.dart';
import 'package:dmt_redesign/screens/home/widgets/vehicle_details_container.dart';
import 'package:dmt_redesign/screens/ongoing_number.dart';
import 'package:dmt_redesign/screens/revlicense.dart';
import 'package:dmt_redesign/screens/settings.dart';
import 'package:dmt_redesign/screens/vehicle_info.dart';
import 'package:dmt_redesign/ui-utils/appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomePage> {
  int currentTabIndex = 0;

  List<Widget> bottomTabs = <Widget>[
    const OngoingNumberPage(),
    const VehicleInfoPage(),
    const RevenueLicensePage(),
    const SettingsPage()
  ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text("Vehicle Information"),backgroundColor:  Colors.red.shade900,),
      appBar: appBarLight(context),
      body: bottomTabs.elementAt(currentTabIndex),
      bottomNavigationBar: BottomNavigationBar(
        
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          iconSize: 32,
          onTap: onTapped,
          currentIndex: currentTabIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.confirmation_number),
                label: "Ongoing Number",
                icon: Icon(
                  Icons.confirmation_number_outlined,
                )),
            BottomNavigationBarItem(
                label: "Vehicle Details",
                activeIcon: Icon(Icons.info),
                icon: Icon(
                  Icons.info_outline,
                )),
            BottomNavigationBarItem(
                label: "Revenue License",
                activeIcon: Icon(Icons.fact_check),
                icon: Icon(
                  Icons.fact_check_outlined,
                )),
            // BottomNavigationBarItem(
            //     label: "Settings",
            //     activeIcon: Icon(Icons.settings),
            //     icon: Icon(
            //       Icons.settings_outlined,
            //     )),
          ]),
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
                  ongoingNumberContainer(context),
                  vehicleDetailsContainer(context),
                  revenueStatusContainer(context),

                  //govtLabel()
                ],
              ),
            ))
          ],
        ),
      ))
    ],
  );
}

Widget govtLabel() {
  return Positioned(
      top: 701,
      left: 117,
      child: SizedBox(
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
                child: SizedBox(
                    width: 113,
                    height: 30,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: SizedBox(
                              width: 113,
                              height: 30,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: SizedBox(
                                        width: 113,
                                        height: 30,
                                        child: Stack(children: const <Widget>[
                                          Positioned(
                                              top: 23,
                                              left: 7,
                                              child: Text(
                                                'DEPARTMENT OF MOTOR TRAFFIC',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        161, 32, 26, 1),
                                                    fontFamily: 'Roboto',
                                                    fontSize: 6,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 11,
                                              left: 7,
                                              child: Text(
                                                'போக்குவரத்து திணைக்களம்.',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        161, 32, 26, 1),
                                                    fontFamily:
                                                        'Noto Sans Sinhala',
                                                    fontSize: 6,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Text(
                                                'මෝටර් රථ ප්‍රවාහන දෙපාර්තමේන්තුව  ',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        161, 32, 26, 1),
                                                    fontFamily:
                                                        'Noto Sans Sinhala',
                                                    fontSize: 6,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                        ]))),
                              ]))),
                    ]))),
          ])));
}
