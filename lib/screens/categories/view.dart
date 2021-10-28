import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/const/sizes.dart';
import 'package:tech_shop_app/screens/categories/states/categories_states.dart';
import 'package:tech_shop_app/screens/home/controllers/category_controller.dart';
import 'package:tech_shop_app/widgets/bold_hint.dart';
import 'controllers/category_controller.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key key}) : super(key: key);

  @override
  _CategoriesViewState createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  Widget build(BuildContext context) {
  //  final cubit = CategoriesController.of(context);

    return BlocProvider(
        create: (BuildContext context) => CategoriesController()..getCategoriesData(),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: BlocBuilder<CategoriesController, CategoriesStates>(
            builder: (context, state) => state is CategoriesLoading
                ? Center(
                    child: CircularProgressIndicator(
                    color: Color.fromARGB(250, 255, 116, 102),
                  ))
                : ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: CategoriesController.of(context).categoriesModel.data.data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          // onTap: () => Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => CategoryProducts(
                          //           cubit.categoryModel.data.data[index].id),
                          //     )),
                          child: Container(
                            height: 100,
                            width: sizeFromWidth(2.2, context),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  child: Image.network(
                                    CategoriesController.of(context).categoriesModel.data.data[index]
                                        .image,
                                    height: 80,
                                  ),
                                ),
                                Text(
                                  CategoriesController.of(context).categoriesModel.data.data[index]
                                      .name,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
          ),
        ));
  }
}
