import 'package:flutter/material.dart';

enum LanguageCodes { si, ta, en }

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();

}

class _SettingsPageState extends State<SettingsPage> {
  LanguageCodes languageCodes = LanguageCodes.en;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: ListView(children: <Widget>[
        SegmentedButton<LanguageCodes>(segments: const <ButtonSegment<LanguageCodes>>[
          ButtonSegment<LanguageCodes>(value: LanguageCodes.en, label: Text("English")),
          ButtonSegment<LanguageCodes>(value: LanguageCodes.ta, label: Text("Tamil")),
          ButtonSegment<LanguageCodes>(value: LanguageCodes.si, label: Text("Sinhala")),
        ], selected: <LanguageCodes>{languageCodes},
        onSelectionChanged: (Set<LanguageCodes> langselection){
          setState(() {
            languageCodes = langselection.first;
          });
        },),
        Padding(padding: const  EdgeInsets.only(left: 5, top: 40),
          child: ListTile(
          leading: const Icon(Icons.info),
          //style: ListTileStyle(),
          title: const Text('About'),
          subtitle: const Text("About this app"),
          onTap: (){
            showAboutDialog(
                context: context,
                applicationName: 'Vehicle Information App',
                applicationVersion: 'preview',
                applicationIcon: Image.asset(
                  'assets/images/Image4.png',
                  height: 50,
                  width: 50,
                ));
          },
        ),)

      ],),
      appBar: AppBar(
        centerTitle: true,
        //backgroundColor: Colors.transparent,
        title:  Text("Settings", style: TextStyle(color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black),),
      ),
    );
  }
}
