import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tech_shop_app/core/sharedHelper/shared_helper.dart';
import 'package:tech_shop_app/screens/homeLayout/view.dart';
import 'package:tech_shop_app/screens/onBoarding/view.dart';
import 'package:tech_shop_app/widgets/app_name.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute( builder: (context) => SharedHelper.isLogged ? HomeLayout() : OnBoardingView())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: AppName(
        color: Colors.black,
      )),
    );
  }
}
