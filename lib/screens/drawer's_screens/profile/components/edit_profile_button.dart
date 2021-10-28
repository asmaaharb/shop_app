import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_shop_app/widgets/button.dart';

class EditProfileButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: InkWell(
          onTap: () { },
          child: CustomButton(
            buttonTitle: "Edit Profile",
          )),
    );
  }
}