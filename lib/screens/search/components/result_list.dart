import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tech_shop_app/screens/home/widgets/pro_card.dart';
import 'package:tech_shop_app/screens/search/controller/controller.dart';
import 'package:tech_shop_app/screens/search/states/controller.dart';

class ResultList extends StatelessWidget {
  const ResultList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final controller = SearchController.of(context);

    return  BlocBuilder(
      builder: (context, state) => state is SearchLoading
          ? Center(
        child: CircularProgressIndicator(),
      )
          :  Expanded(
            child: ListView.builder(

                scrollDirection: Axis.vertical,
               itemCount: controller.searchModel.data.data.length,
                itemBuilder: (context, index) {
                  final product = controller.searchModel.data.data[index];

               return ProductCard(
                 image: product.image,
                 name: product.name,
                 isDiscount: product.discount == 0,
                 oldPrice: product.oldPrice.toString(),
                 isFavourite: product.inFavorites ?? false,
                 price: product.price.toString(),
                 productId:  product.id,);
                },
              ),
          ),
    );
  }
}
