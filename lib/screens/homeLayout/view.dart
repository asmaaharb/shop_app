import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/screens/homeLayout/states/controller.dart';
import 'components/app_bar.dart';
import 'components/drawer.dart';
import 'components/nav_bar.dart';
import 'controller/home_layout_controller.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  final GlobalKey<ScaffoldState> openDrawerKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeLayoutController(),
      child: BlocBuilder<HomeLayoutController, HomeLayoutStates>(
        builder: (context, state) => Scaffold(
          key: HomeLayoutController.scaffoldKey,
          drawer: Drawer(child: DrawerE()),
          backgroundColor: Colors.white,
          appBar: homeAppBar(),
          bottomNavigationBar: NavBar(),
          body: HomeLayoutController.of(context).getCurrentView,
        ),
      ),
    );
  }
}
