import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:tech_shop_app/screens/forget_password/components/show_dialog.dart';
import 'package:tech_shop_app/widgets/button.dart';

class ResetPasswordButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: InkWell(
          onTap: () {

              showDialog(context: context, builder: (context) => alertDialog());

          },
          child: CustomButton(
          buttonTitle: "Reset your password",
          ),
          ),
          ),

        ),
        TextButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ResetPasswordView())
              //  );
            },
            child: Text(
              'ForgottenPass.resetPass'.tr(),
              style: TextStyle(color: Colors.grey[600], fontSize: 15),
            ))
      ],
    );
  }
}
