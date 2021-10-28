import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:tech_shop_app/screens/drawer's_screens/settings/widgets/list_tile.dart";
class ListTileNoti extends StatefulWidget {

  @override
  _ListTileNotiState createState() => _ListTileNotiState();
}

class _ListTileNotiState extends State<ListTileNoti> {
    bool _switchValue=true;

  @override
  Widget build(BuildContext context) {
    return ListTilee(
            listTileSubTitle:Text("Notifications",style: TextStyle(fontSize: 20,color: Colors.black),),
            listTileTitle:Text(''),
            trailing: Padding(
             padding: const EdgeInsets.only(top: 30.0,right: 8),
              child: CupertinoSwitch(
                activeColor:Color.fromARGB(250, 255, 116, 102) ,
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
            ),);
  }
}