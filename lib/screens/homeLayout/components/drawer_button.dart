import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_shop_app/core/const/sizes.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: sizeFromWidth(8, context),
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(15)),
        child: Icon(
          Icons.menu,
          color: Colors.grey,
        ),
      ),
    );
  }
}
