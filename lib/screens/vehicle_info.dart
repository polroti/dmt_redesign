import 'package:dmt_redesign/data/data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VehicleInfoPage extends StatefulWidget {
  const VehicleInfoPage({Key? key}) : super(key: key);

  @override
  State<VehicleInfoPage> createState() => _VehicleInfoPageState();
}

class _VehicleInfoPageState extends State<VehicleInfoPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController licenseNumberController = TextEditingController();
  bool isLicensePlateEmpty = true;
  bool shouldCardBeShown = false;
  bool submitBtn = true;

  VehicleInfoEntity vehicleInfoEntity =
      VehicleInfoEntity("", "", "", "", "", "", "", "", "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //master column
        body: SingleChildScrollView(
      child: Column(
        children: [
          Form(
              key: _formKey,
              //form column
              child: Column(
                children: [
                  //text field
                  textField(context),
                  //submit button
                  mainButton(context)
                ],
              )),

          //info card
          Visibility(
              visible: shouldCardBeShown,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Card(
                  elevation: 10,
                  clipBehavior: Clip.antiAlias,
                  child: SingleChildScrollView(
                    child: Column(children: [
                      ListTile(
                        dense: true,
                        //contentPadding: const EdgeInsets.only(left: 10,right: 10,bottom: 0),
                        leading: getVehicleIcon(vehicleInfoEntity.type),
                        title: Text(vehicleInfoEntity.type),
                        subtitle: const Text("Type"),
                      ),
                      ListTile(
                        dense: true,
                        leading: Icon(
                          Icons.star,
                          size: 32,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Theme.of(context).primaryColor
                                  : Colors.white,
                        ),
                        title: Text(vehicleInfoEntity.modelName),
                        subtitle:
                            Text(vehicleInfoEntity.licensNumber.toUpperCase()),
                      ),
                      ListTile(
                        dense: true,
                        leading: Icon(
                          Icons.account_circle,
                          size: 32,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Theme.of(context).primaryColor
                                  : Colors.white,
                        ),
                        title: Text(vehicleInfoEntity.ownerName),
                        subtitle: const Text("Owner"),
                      ),
                      ListTile(
                        dense: true,
                        leading: Icon(
                          Icons.help,
                          size: 32,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Theme.of(context).primaryColor
                                  : Colors.white,
                        ),
                        title: Text(vehicleInfoEntity.fullModelName),
                        subtitle: const Text("Make & Model"),
                      ),
                      ListTile(
                        dense: true,
                        leading: Icon(
                          Icons.calendar_month,
                          size: 32,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Theme.of(context).primaryColor
                                  : Colors.white,
                        ),
                        title: Text(vehicleInfoEntity.year),
                        subtitle: const Text("Year of Manufacture"),
                      ),
                      ListTile(
                        dense: true,
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: FaIcon(
                            FontAwesomeIcons.gasPump,
                            size: 28,
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Theme.of(context).primaryColor
                                    : Colors.white,
                          ),
                        ),
                        title: Text(vehicleInfoEntity.fuelType),
                        subtitle: const Text("Fuel Type"),
                      ),
                      const Divider(),
                      ListTile(
                        dense: true,
                        // leading:  Icon(Icons.star),
                        title: Text("Revenue License Status : " +
                            vehicleInfoEntity.revlicenseStatus),
                      )
                    ]),
                  ),
                ),
              ))
        ],
      ),
    ));
  }

  Widget mainButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Visibility(
            visible: submitBtn,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.search),
              onPressed: !isLicensePlateEmpty
                  ? () {
                      if (_formKey.currentState!.validate()) {
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(
                        //       behavior: SnackBarBehavior.floating,
                        //       content: Text('Processing Data')),
                        // );

                        String licenseNo =
                            licenseNumberController.text.replaceAll(" ", "");
                        bool isMatched = false;

                        if (licenseNo.contains('ශ්‍රී')) {
                          RegExp regexForSri = RegExp('[0-9]+ශ්‍රී[0-9]+');

                          if (regexForSri.hasMatch(licenseNo)) {
                            isMatched = true;
                          }
                        } else {
                          RegExp normalRegex = RegExp('[A-Za-z0-9]+-[0-9]+');

                          if (normalRegex.hasMatch(licenseNo)) {
                            //continue
                            isMatched = true;
                          }
                        }

                        if (!isMatched) {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: const Text("Error"),
                              content:
                                  const Text("hariyata type carapan whotto"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: const Text("Ha ithin"),
                                ),
                              ],
                            ),
                          );
                        } else {
                          for (var i = 0; i < all.length; i++) {
                            if (all[i].licensNumber ==
                                licenseNo.toUpperCase()) {
                              setState(() {
                                vehicleInfoEntity = all[i];
                              });
                            }
                          }

                          setState(() {
                            shouldCardBeShown = true;
                            submitBtn = false;
                          });
                        }
                      }
                    }
                  : null,
              label: Text('Submit'.toUpperCase()),
            ),
          ),
          Visibility(
            visible: !submitBtn,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                licenseNumberController.clear();
                setState(() {
                  isLicensePlateEmpty = true;
                  shouldCardBeShown = false;
                  submitBtn = true;
                });
              },
              label: Text('New Query'.toUpperCase()),
            ),
          ),
        ],
      ),
    );
  }

  Widget textField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 2, left: 8, right: 8),
      child: TextFormField(
        onChanged: (value) {
          if (value.isEmpty) {
            setState(() {
              isLicensePlateEmpty = true;
            });
          } else {
            setState(() {
              isLicensePlateEmpty = false;
            });
          }
        },
        controller: licenseNumberController,
        decoration: InputDecoration(
            hintText: "CBB - 3077",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(color: Theme.of(context).primaryColor))),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }

  Image getVehicleIcon(String type) {
    switch (type) {
      case 'Motor Car':
        return Image.asset(
          "assets/icons/car.png",
          scale: 1,
          height: 40.0,
          width: 40.0,
          color: Theme.of(context).brightness == Brightness.light
              ? Theme.of(context).primaryColor
              : Colors.white,
        );
      case 'Motor Bike':
        return Image.asset(
          "assets/icons/motor_cycle.png",
          scale: 1,
          height: 40.0,
          width: 40.0,
          color: Theme.of(context).brightness == Brightness.light
              ? Theme.of(context).primaryColor
              : Colors.white,
        );

      default:
        return Image.asset(
          "assets/icons/car.png",
          scale: 1,
          height: 40.0,
          width: 40.0,
          color: Theme.of(context).brightness == Brightness.light
              ? Theme.of(context).primaryColor
              : Colors.white,
        );
    }
  }
}
