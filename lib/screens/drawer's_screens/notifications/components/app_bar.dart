import 'package:flutter/material.dart';
import 'package:tech_shop_app/core/router/router.dart';
import 'package:tech_shop_app/widgets/bold_hint.dart';

notificationAppBar() => AppBar(
  title: BoldHint(boldHint: "Notification",),
  centerTitle: true,
  backgroundColor: Colors.transparent,  elevation: 0,
  leading: IconButton(
      onPressed: ()=>MagicRouter.pop(),
      icon:Icon(Icons.arrow_back_ios,color: Colors.black,)),

);
