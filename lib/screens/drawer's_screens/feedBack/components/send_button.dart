import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:tech_shop_app/screens/drawer's_screens/feedBack/controllers/controller.dart";
import "package:tech_shop_app/screens/drawer's_screens/feedBack/states/controller.dart";
import 'package:tech_shop_app/widgets/button.dart';

class FeedBackConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = FeedBackController.of(context);
    return BlocBuilder(
      bloc: controller,
      builder: (context, state) => state is FeedBackLoading
          ? CupertinoActivityIndicator()
          : Padding(
        padding: const EdgeInsets.only(left: 200.0),
            child: InkWell(
                onTap: () {
                 controller.feedBack();
                },
                child: CustomButton(
                  buttonTitle: "Send",
                ),
              ),
          ),
    );
  }
}
