import 'package:dmt_redesign/screens/revlicense.dart';
import 'package:flutter/material.dart';

Widget revenueStatusContainer(BuildContext context) {
  return GestureDetector(
    onTap: () {
       Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const RevenueLicensePage()),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.24,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red.shade900, width: 3),
            borderRadius: BorderRadius.circular(10)),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.fact_check_outlined,
                size: 48,
                color: Colors.red.shade900,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Revenue License Status".toUpperCase(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red.shade900),
              )
            ],
          )
        ]),
      ),
    ),
  );
}
