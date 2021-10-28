import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tech_shop_app/screens/home/controllers/home_controller.dart';
import 'package:tech_shop_app/screens/home/states/controller.dart';
import 'package:tech_shop_app/screens/home/widgets/pro_card.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final controller = HomeController.of(context);

    return BlocBuilder(
      bloc: controller,
      builder: (context, state) => state is HomeLoading
          ? CircularProgressIndicator():   SizedBox(
        height: 200,
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              scrollDirection: Axis.vertical,
             itemCount: controller.homeModel.data.products.length,
              itemBuilder: (context, index) {
                final product = controller.homeModel.data.products[index];

             return ProductCard(
               image: product.image,
               name: product.name,
               isDiscount: product.discount == 0,
               oldPrice: product.oldPrice.toString(),
               isFavourite: product.inFavorites ?? false,
               price: product.price.toString(),
               id:  product.id,);
              },
              staggeredTileBuilder: (index) {
                return StaggeredTile.count(1, index.isEven ? 1.9 : 1.7);
              }),
          ),

    );
  }
}
