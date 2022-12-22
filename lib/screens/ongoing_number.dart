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
    "assets/icons/ambulance.png",
    "assets/icons/car.png",
    "assets/icons/commercial.png",
    "assets/icons/duel_purpos_commercial.png",
    "assets/icons/fork_lifter.png"
  ];

  final List<String> licenseNumbers = <String>[
    "LW - 2199",
    "CMB - 1844",
    "NE - 1328",
    "PK - 7172",
    "LV - 0321",
    "LW - 2199",
    "CMB - 1844",
    "NE - 1328",
    "PK - 7172",
    "LV - 0321"
  ];

  final List<String> vehicleType = <String>[
    "AMBULANCE",
    "CAR",
    "COMMERCIAL",
    "DUAL PURPOSE (COMMERCIAL)",
    "FORK LIFT",
    "AMBULANCE",
    "CAR",
    "COMMERCIAL",
    "DUAL PURPOSE (COMMERCIAL)",
    "FORK LIFT"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ongoing Number"),
        backgroundColor: Colors.red.shade900,
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              child: Card(
                elevation: 10,
                child: ListTile(
                  leading: Image.asset(
                    icons[index],
                    scale: 1.0,
                    height: 48.0,
                    width: 48.0,
                  ),
                  title: Text(
                    licenseNumbers[index],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(vehicleType[index]),
                 
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: MediaQuery.of(context).size.height / 150,
              ),
          itemCount: 10),
    );
  }
}
