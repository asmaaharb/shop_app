import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:tech_shop_app/screens/drawer's_screens/settings/widgets/list_tile.dart";

class ListTileLangs extends StatefulWidget {

  @override
  _ListTileLangsState createState() => _ListTileLangsState();
}

class _ListTileLangsState extends State<ListTileLangs> {
  bool _switchValue1=true;

  @override
  Widget build(BuildContext context) {
    return ListTilee(
            listTileSubTitle:Text("en",style: TextStyle(fontSize: 15, color:Color.fromARGB(250, 255, 116, 102),)) ,
      listTileTitle:Text("Language",style: TextStyle(fontSize: 20, color:Colors.black)
            ),
            trailing: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoSwitch(
                 activeColor:Color.fromARGB(250, 255, 116, 102) ,
                  value: _switchValue1,
                  onChanged: (value) {


                    setState(() {
                      _switchValue1 = false;

                    });
                  },
                ),
            ),);
  }
}