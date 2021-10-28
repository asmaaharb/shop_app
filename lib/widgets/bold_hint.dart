import 'package:flutter/material.dart';
class BoldHint extends StatelessWidget {
  const BoldHint({ this.boldHint });
final boldHint;
  @override
  Widget build(BuildContext context) {
    return   Padding(
             padding: const EdgeInsets.all(20.0),
             child: Text(boldHint,style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
           );
  }
}