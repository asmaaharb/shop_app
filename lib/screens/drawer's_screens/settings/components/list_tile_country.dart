import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/list_tile.dart';
class ListTileCountry extends StatefulWidget {

  @override
  _ListTileCountryState createState() => _ListTileCountryState();
}

class _ListTileCountryState extends State<ListTileCountry> {

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: ListTilee(
                listTileSubTitle: Text("Egypt",

                    style: TextStyle(fontSize: 15, color: Color.fromARGB(250, 255, 116, 102),)),
                listTileTitle: Text("Country",

                    style: TextStyle(fontSize: 20, color: Colors.black))),
    );
  }
}