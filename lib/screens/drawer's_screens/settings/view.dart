import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/list_tile_country.dart';
import 'components/list_tile_lang.dart';
import 'components/list_tile_noti.dart';

class SettingsView extends StatefulWidget {
  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250,253, 231, 200),
      appBar: settingsAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTileLangs(),
          ListTileNoti(),
          ListTileCountry(),
        ],
      ),
    );
  }
}
