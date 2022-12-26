import 'package:flutter/material.dart';

class VehicleInfoPage extends StatefulWidget {
  const VehicleInfoPage({Key? key}) : super(key: key);

  @override
  State<VehicleInfoPage> createState() => _VehicleInfoPageState();
}

class _VehicleInfoPageState extends State<VehicleInfoPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController licenseNumberController = TextEditingController();
  bool isLicensePlateEmpty = true;

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
                      ElevatedButton(
                        onPressed: !isLicensePlateEmpty
                            ? () {
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Processing Data')),
                                  );
                                }
                              }
                            : null,
                        child: Text('Submit'.toUpperCase()),
                      ),
                    ],
                  ),
                ),
              ],
            ))

        //info card
      ],
    ));
  }
}
