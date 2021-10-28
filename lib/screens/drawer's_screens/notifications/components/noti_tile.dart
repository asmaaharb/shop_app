import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:tech_shop_app/screens/drawer's_screens/notifications/controllers/noti_controller.dart";
import "package:tech_shop_app/screens/drawer's_screens/notifications/states/controller.dart";

class NotificationTile extends StatelessWidget {
  const NotificationTile({ this.title, this.subtitle, this.body});
final title;
final subtitle;
final body;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationController, NotificationStates>(

    builder: (context, state) => state is NotificationLoading
    ? LinearProgressIndicator()
        : ListTile(
      focusColor: Color.fromARGB(250, 255, 116, 102),
      title: Text(title),
      subtitle: Text(subtitle),

    ));
  }
}
