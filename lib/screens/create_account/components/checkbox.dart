import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/const/sizes.dart';
import 'package:tech_shop_app/screens/create_account/controllers/terms_controller.dart';
import 'package:tech_shop_app/screens/create_account/states/terms_states.dart';

class AgreeBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=>TermsController(),
      child: Scaffold(
        body: BlocBuilder<TermsController, TermsStates>(
        builder: (context, state) {
          final controller = TermsController.of(context);
          return Container(
            height: 30,
            width: sizeFromWidth(1.2, context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  activeColor: Color.fromARGB(250, 255, 116, 102),
                  value: controller.isAgreed,
                  onChanged: controller.agree,
                ),
                Container(
                  height: 10,
                  width: sizeFromWidth(2, context),
                  child: Text(
                    "Yes, I want to receive offers and discounts",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );

}}
