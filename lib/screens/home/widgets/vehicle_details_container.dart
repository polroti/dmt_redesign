import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget vehicleDetailsContainer(BuildContext context) {
  return Padding(
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
              Icons.info,
              size: 48,
              color: Colors.red.shade900,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Vehicle Details".toUpperCase(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.red.shade900),
            )
          ],
        )
      ]),
    ),
  );
}
