import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/screens/favorite/states/addlikes_states.dart';

import 'components/pro_cat_card.dart';
import 'controller/get_likes_controller.dart';

class FavoriteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final cubit = GetFavoriteController()..getFavorite();
    return BlocProvider(
      create: (context) => cubit,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<GetFavoriteController, AddFavoriteStates>(
            builder: (context, state) =>
            GetFavoriteController.of(context).addFavModel == null
                ? Center(child: CircularProgressIndicator(color:  Color.fromARGB(250, 255, 116, 102),))
                : ListView.separated(
              physics: BouncingScrollPhysics(),
              itemCount: GetFavoriteController.of(context)
                  .addFavModel
                  .data
                  .data
                  .length,
              separatorBuilder: (context, index) => Divider(
                thickness: 2,
              ),
              padding: EdgeInsets.all(15),
              itemBuilder: (context, index) {
                final addFav = GetFavoriteController.of(context)
                    .addFavModel
                    .data
                    .data[index]
                    .product;

                // final product = cubit.homeModel.data.products[index];

                return CatProductCard(
                  isFavourite:true,
                  isDiscount: addFav.discount == 0,
                  name: addFav.name,
                  image: addFav.image,
                  oldPrice: addFav.oldPrice.toString(),
                  price: addFav.price.toString(),
                  productId: addFav.id,

                );
              },
            ),
          ),
        ),
      ),
    );
  }
}