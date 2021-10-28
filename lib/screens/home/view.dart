import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/screens/favorite/controller/likes_controller.dart';
import 'package:tech_shop_app/screens/home/states/controller.dart';
import 'package:tech_shop_app/screens/home/components/items_list.dart';
import 'package:tech_shop_app/widgets/bold_hint.dart';
import 'components/categories_list.dart';
import 'components/swiper.dart';
import 'controllers/category_controller.dart';
import 'controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => HomeController()..getData(),
            // child: ItemsList(),
          ),
          BlocProvider(
            create: (BuildContext context) =>
                CategoryController()..getCategoryData(),
          ),
          BlocProvider(
            create: (BuildContext context) => FavoriteController(),
          ),
        ],
        child: Scaffold(
          backgroundColor: Colors.white,
          body: BlocBuilder<HomeController, HomeStates>(
              builder: (context, state) => state is HomeLoading
                  ? Center(child: CircularProgressIndicator(color:  Color.fromARGB(250, 255, 116, 102),))
                  : SizedBox(
                    child: ListView(
                        children: [
                        CardSwiper(),
                          Padding(
                            padding: const EdgeInsets.only(right: 220.0),
                            child: BoldHint(
                              boldHint: "Categories",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CategoriesList(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 220.0),
                            child: BoldHint(
                              boldHint: "Items",
                            ),
                          ),
                         ItemsList()
                        ],
                      ),
                  )),
        ));
  }
}
