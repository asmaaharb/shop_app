import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/screens/homeLayout/view.dart';
import 'package:tech_shop_app/screens/login/controllers/controller.dart';
import 'package:tech_shop_app/screens/login/states/controller.dart';
import 'package:tech_shop_app/widgets/button.dart';

class LoginConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LoginController controller = LoginController.of(context);
    return BlocBuilder(
      bloc: controller,
      builder: (context, state) => state is LoginLoading
          ? CupertinoActivityIndicator()
          : InkWell(
              onTap: () async {
                final message = await controller.login();
                print(message);
                if (message != "ok") {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("jjh"),));
                } else {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeLayout()));
                }
              },
              child: CustomButton(
                buttonTitle: "login",
              ),
            ),
    );
  }
}
