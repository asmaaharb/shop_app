import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:tech_shop_app/screens/homeLayout/controller/home_layout_controller.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = HomeLayoutController.of(context);
    return SalomonBottomBar(
      currentIndex:cubit.currentIndex,
      onTap: cubit.changeIndex,
      items:cubit.list

    );



  }
}