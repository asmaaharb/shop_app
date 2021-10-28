import 'package:flutter/material.dart';
class NormalText extends StatelessWidget {
  const NormalText({ this.title, this.color });
  final title;
  final color;
  @override
  Widget build(BuildContext context) {
    return Container(child: Text(title,style: TextStyle(color: color,fontSize:12,fontWeight: FontWeight.bold),));
  }
}