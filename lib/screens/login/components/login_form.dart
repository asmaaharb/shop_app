import 'package:flutter/material.dart';
import 'package:tech_shop_app/screens/login/controllers/controller.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isVisible = false;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = LoginController.of(context);
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty)
                  return 'Empty field!';
                else if (!value.contains('@'))
                  return 'missing @!';
                else
                  return null;
              },
              controller: controller.emailController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                hintText: "Email",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty)
                  return 'Empty field!';
                else if (value.length < 4)
                  return 'Length';
                else
                  return null;
              },
              controller: controller.passwordController,
              obscureText: _isVisible ? false : true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "password",
                suffixIcon: IconButton(
                  onPressed: () => updateStatus(),
                  icon: Icon(
                      _isVisible ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
