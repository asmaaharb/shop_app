import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tech_shop_app/screens/home/states/controller.dart';
import 'package:tech_shop_app/screens/home/widgets/pro_card.dart';
import 'controllers/categories_pro_controller.dart';

class CategoriesProsView extends StatelessWidget {
  const CategoriesProsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = CategoriesController.of(context);
    return BlocBuilder(
      bloc: controller,
      builder: (context, state) => state is HomeLoading
          ? CircularProgressIndicator(): SizedBox(
        height: 200,
        child: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            scrollDirection: Axis.vertical,
            itemCount: controller.categoriesProductsModel.data.data.length,
            itemBuilder: (context, index) {
              final product = controller.categoriesProductsModel.data.data[index];

              return ProductCard(
                image: product.image,
                name: product.name,
                id:  product.id,
              );
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.9 : 1.7);
            }),
      ),

    );
  }
}
