import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/const/sizes.dart';
import 'package:tech_shop_app/widgets/app_name.dart';
import 'components/checkbox.dart';
import 'components/confirm_button.dart';
import 'components/signup_form.dart';
import 'controllers/controller.dart';
import 'controllers/terms_controller.dart';

class CreateAccView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
        BlocProvider(
          create: (context) => SignUpController(),
          child: Scaffold(
            backgroundColor:Color.fromARGB(250,253, 206, 158),
            body:Center(
              child: ListView(
                children: [
                  AppName(color: Colors.white,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Container(
                      height: sizeFromHeight(1.4, context),
                      width: sizeFromWidth(1.2, context),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: ListView(
                        children: [
                          SignUpForm(),
                       //   AgreeBox(),
                          SignUpConfirmButton()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

    );
  }
}
