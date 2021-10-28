import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:tech_shop_app/screens/drawer's_screens/questions/controllers/faqs_controller.dart";

class QuestionTile extends StatelessWidget {
  const QuestionTile({ this.title,  this.body, this.controller});
final title;
final body;
final FAQSController controller;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: Colors.white,
      textColor: Color.fromARGB(250, 255, 116, 102),
      iconColor: Color.fromARGB(250, 255, 116, 102),
      title: Text(title),
      children:[
        ListTile(title: Text(body)),
      ],
    );
  }
}
