import 'package:flutter/material.dart';

class OngoingNumberPage extends StatefulWidget {
  const OngoingNumberPage({Key? key}) : super(key: key);

  @override
  State<OngoingNumberPage> createState() => _OngoingNumberPageState();
}

class _OngoingNumberPageState extends State<OngoingNumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ongoing Number")),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return const SizedBox(
            //  height: 50,
              
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.car_rental, size: 48,),
                  title: Text('Two-line ListTile'),
                  subtitle: Text('Here is a second line'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
               SizedBox(height: MediaQuery.of(context).size.height / 25.5,),
          itemCount: 5),
    );
  }
}
