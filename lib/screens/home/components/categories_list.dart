import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/const/sizes.dart';
import 'package:tech_shop_app/screens/home/controllers/category_controller.dart';
import 'package:tech_shop_app/screens/home/states/category_states.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = CategoryController.of(context);

    return BlocBuilder<CategoryController, CategoryStates>(
      builder: (context, state) => state is CategoryLoading
          ?Center(child: CircularProgressIndicator(color:  Color.fromARGB(250, 255, 116, 102),))
          : SizedBox(
            height: 60,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cubit.categoryModel.data.data.length,
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
                        height: 50,
                        width: sizeFromWidth(2.2, context),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              child: Image.network(
                                cubit.categoryModel.data.data[index].image,
                                height: 50,
                              ),
                            ),

                            Text(
                              cubit.categoryModel.data.data[index].name,
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
    );
  }
}
