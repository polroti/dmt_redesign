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
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 5, top: 10),
            child: ListTile(
              leading: Icon(Icons.translate),
              //style: ListTileStyle(),
              title: Text('Change Language'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: SegmentedButton<LanguageCodes>(
              emptySelectionAllowed: false,
              multiSelectionEnabled: false,
              showSelectedIcon: false,
              selectedIcon: const Icon(Icons.abc),
              style: ButtonStyle(),
              segments: const <ButtonSegment<LanguageCodes>>[
                ButtonSegment<LanguageCodes>(
                    value: LanguageCodes.en, label: Text("English")),
                ButtonSegment<LanguageCodes>(
                    value: LanguageCodes.ta, label: Text("தமிழ்")),
                ButtonSegment<LanguageCodes>(
                    value: LanguageCodes.si, label: Text("සිංහල")),
              ],
              selected: <LanguageCodes>{languageCodes},
              onSelectionChanged: (Set<LanguageCodes> langselection) {
                setState(() {
                  languageCodes = langselection.first;
                });
              },
            ),
          ),
          const Divider(
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 20),
            child: ListTile(
              leading: const Icon(Icons.info),
              //style: ListTileStyle(),
              title: const Text('About'),
              subtitle: const Text("About this app"),
              onTap: () {
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
            ),
          )
        ],
      ),
      // appBar: AppBar(
      //   centerTitle: true,
      //   //backgroundColor: Colors.transparent,
      //   title: Text(
      //     "Language",
      //     style: TextStyle(
      //         color: Theme.of(context).brightness == Brightness.dark
      //             ? Colors.white
      //             : Colors.black),
      //   ),
      // ),
    );
  }
}
