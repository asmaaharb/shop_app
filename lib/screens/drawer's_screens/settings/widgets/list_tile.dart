import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTilee extends StatefulWidget {
  const ListTilee({this.listTileSubTitle, this.listTileTitle, this.trailing});
  final listTileTitle;
  final listTileSubTitle;
  final trailing;
  @override
  _ListTileeState createState() => _ListTileeState();
}

class _ListTileeState extends State<ListTilee> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: widget.listTileTitle,
        subtitle: widget.listTileSubTitle,
        trailing: widget.trailing);
  }
}
