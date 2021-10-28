import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_shop_app/core/const/sizes.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        width: sizeFromWidth(8, context),
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15)
        ),
        child: Icon(Icons.notifications_none,color: Colors.grey,),
      ),
    );
  }
}
