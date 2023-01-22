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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //master column
        body: Column(
      children: [
        Form(
            key: _formKey,
            //form column
            child: Column(
              children: [
                //text field
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),

                //submit button
                Padding(
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
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          behavior: SnackBarBehavior.floating,
                                          content: Text('Processing Data')),
                                    );
                                    setState(() {
                                      shouldCardBeShown = true;
                                      submitBtn = false;
                                    });
                                  }
                                }
                              : null,
                          label: Text('Submit'.toUpperCase()),
                        ),
                      ),
                      Visibility(
                        visible: !submitBtn,
                        child: ElevatedButton.icon(
                          icon: Icon(Icons.refresh),
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
                ),
              ],
            )),

        //info card
        Visibility(
            visible: shouldCardBeShown,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(children: [
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/car.png",
                      scale: 1,
                      height: 40.0,
                      width: 40.0,
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : Colors.white,
                    ),
                    title: const Text('Suzuki Wagon R'),
                    subtitle: const Text(
                      'MOTOR CAR',
                    ),
                  ),
                  const ListTile(
                    leading: FaIcon(FontAwesomeIcons.accusoft),
                    title: Text('Manoj Kumar'),
                  ),
                  const ListTile(
                    leading: FaIcon(FontAwesomeIcons.car),
                    title: Text('suzuki'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Wagon R Stingray X'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.calendar_month),
                    title: Text('2018'),
                  ),
                  const ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.gasPump,
                      size: 18,
                    ),
                    title: Text('Petrol'),
                  ),
                  const Divider(),
                  const ListTile(
                    // leading:  Icon(Icons.star),
                    title: Text('Revenue License Status : Active'),
                  )
                ]),
              ),
            ))
      ],
    ));
  }
}
