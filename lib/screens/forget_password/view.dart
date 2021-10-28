import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/email_text_field.dart';
import 'components/reset_password_button.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 253, 231, 200),
      appBar: forgetPasswordAppBar(),
      body: Column(children: [
        EmailTextField(),
        ResetPasswordButton(),
      ]),
    );
  }
}
