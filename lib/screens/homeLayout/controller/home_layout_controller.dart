import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:tech_shop_app/screens/categories/view.dart';
import 'package:tech_shop_app/screens/favorite/view.dart';
import 'package:tech_shop_app/screens/home/view.dart';
import 'package:tech_shop_app/screens/homeLayout/states/controller.dart';
import 'package:tech_shop_app/screens/search/view.dart';

class HomeLayoutController extends Cubit <HomeLayoutStates> {
  HomeLayoutController() : super(HomeLayoutInit());
  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  static HomeLayoutController of(context) => BlocProvider.of(context);
  final formKey = GlobalKey<FormState>();

  int currentIndex = 0;
  final List<Widget> homePages = [
    Container(
      color: Colors.white,
      child: HomeView(),
    ),
    Container(
     child: CategoriesView(),
    ),
    Container(
     child: FavoriteView(),
    ),
    Container(

      child: SearchView(),
    ),
  ];

  final List<SalomonBottomBarItem> list = [
    SalomonBottomBarItem(
      icon: Icon(Icons.home,color: Colors.grey),
      title: Text("Home"),
      selectedColor:Color.fromARGB(250,255, 116, 102)),
    SalomonBottomBarItem(
        icon: Icon(Icons.category_outlined,color: Colors.grey),
        title: Text("Categories"),
        selectedColor:Color.fromARGB(250,255, 116, 102)),

    SalomonBottomBarItem(
      icon: Icon(Icons.favorite_border,color: Colors.grey),
      title: Text("likes"),
  selectedColor:Color.fromARGB(250,255, 116, 102)),

    SalomonBottomBarItem(
      icon: Icon(Icons.search,color: Colors.grey,),
      title: Text("Search"),
        selectedColor:Color.fromARGB(250,255, 116, 102)),
  ];

  void changeIndex(int value) {
    if (currentIndex == value) return;
    currentIndex = value;
    emit(HomeLayoutInit());
  }

  Widget get getCurrentView => homePages[currentIndex];
}
