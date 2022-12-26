import 'package:flutter/material.dart';

class OngoingNumberPage extends StatefulWidget {
  const OngoingNumberPage({Key? key}) : super(key: key);

  @override
  State<OngoingNumberPage> createState() => _OngoingNumberPageState();
}

class _OngoingNumberPageState extends State<OngoingNumberPage> {
  final List<String> icons = <String>[
    "assets/icons/ambulance.png",
    "assets/icons/car.png",
    "assets/icons/commercial.png",
    "assets/icons/duel_purpos_commercial.png",
    "assets/icons/fork_lifter.png",
    "assets/icons/invalid_carriage.png",
    "assets/icons/land_vehicle.png",
    "assets/icons/land_vehicle_small.png",
    "assets/icons/lorry_trailer_bowser.png",
    "assets/icons/motor_cycle.png",
    "assets/icons/motor_hearse.png",
    "assets/icons/motor_lorry_commercial.png",
    "assets/icons/trycicle_van.png",
    "assets/icons/non_agricultural_land_vehicle.png",
    "assets/icons/primover.png",
    "assets/icons/single_cab.png",
    "assets/icons/special_purpose.png",
    "assets/icons/three_wheel.png",
    "assets/icons/three_wheel_car.png",
    "assets/icons/tractor_trailer.png",
    "assets/icons/other.png"
  ];

  final List<String> licenseNumbers = <String>[
    "LW - 2199",
    "CBM - 1844",
    "NE - 1328",
    "PK - 7172",
    "LV - 0321",
    "PZ - 0541",
    "RH - 8880",
    "SP - 5958",
    "LX - 4568",
    "BJC - 8046",
    "LZ - 0221",
    "LP - 3391",
    "QY - 9771",
    "RS - 1813",
    "LY - 5139",
    "DAH - 8866",
    "ZB - 3389",
    "ABV - 3011",
    "KZ - 0174",
    "RZ - 7514",
    "HZ - 6969"
  ];

  final List<String> vehicleType = <String>[
    "AMBULANCE",
    "CAR",
    "COMMERCIAL",
    "DUAL PURPOSE (COMMERCIAL)",
    "FORK LIFT",
    "INVALID CARRIAGE",
    "LAND VEHICLE",
    "LAND VEHICLE (SMALL)",
    "LORRY TRAILER BOWSER",
    "MOTOR CYCLE",
    "MOTOR HEARSE",
    "MOTOR LORRY (COMMERCIAL)",
    "MOTOR TRICYCLE VAN",
    "NON AGRICULTURAL LAND",
    "PRIME MOVER",
    "SINGLE CAB",
    "SPECIAL PURPOSE",
    "THREE WHEELER",
    "THREE WHEELER CAR",
    "TRACTOR TRAILER BOWSER",
    "OTHER"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      //   title: const Text("Ongoing Numbers", style: TextStyle(color: Colors.white),),
      // //  backgroundColor:Colors.white,
      //   actions: const [
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Icon(Icons.refresh),
      //     )
      //   ],
      // ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
                child: Card(
              elevation: 10,
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        vehicleType[index],
                        style: const TextStyle(fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                      Image.asset(
                        icons[index],
                        scale: 0.5,
                        height: 48.0,
                        width: 48.0,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                      ),
                      Text(
                        licenseNumbers[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ]),
              ),
            ));
          },
          itemCount: vehicleType.length),
    );
  }
}
