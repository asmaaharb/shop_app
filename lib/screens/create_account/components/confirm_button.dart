import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/screens/create_account/controllers/controller.dart';
import 'package:tech_shop_app/screens/create_account/controllers/terms_controller.dart';
import 'package:tech_shop_app/screens/create_account/states/controller.dart';
import 'package:tech_shop_app/screens/homeLayout/view.dart';
import 'package:tech_shop_app/widgets/button.dart';

class SignUpConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.of(context);
    return BlocBuilder(
        bloc: controller,
        builder: (context, state) => state is SignUpLoading
            ? CupertinoActivityIndicator()
            : InkWell(
                onTap: () async {
                  final message = await controller.signUp();
                  print(message);
                  if (message != "ok"&&TermsController.of(context).isAgreed==true) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(message),
                    ));
                  } else {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeLayout()));
                  }
                },
                child: CustomButton(
                  buttonTitle: "SignUp",
                ),
              ));
  }
}
