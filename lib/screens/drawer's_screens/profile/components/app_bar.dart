import 'package:flutter/material.dart';
import 'package:tech_shop_app/core/router/router.dart';

profileAppBar() => AppBar(
  centerTitle: false,
  leading: InkWell(
      onTap: ()=> MagicRouter.pop(),
      child: Icon(Icons.arrow_back_ios)),
  elevation: 0,
  automaticallyImplyLeading: false,
  backgroundColor: Colors.transparent,
);