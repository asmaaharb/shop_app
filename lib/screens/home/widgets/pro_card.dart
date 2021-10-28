import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/sharedHelper/shared_helper.dart';
import 'package:tech_shop_app/screens/favorite/controller/likes_controller.dart';
import 'package:tech_shop_app/screens/home/controllers/home_controller.dart';
import 'package:tech_shop_app/screens/home/states/controller.dart';
import 'package:tech_shop_app/screens/productDetails/view.dart';

class ProductCard extends StatefulWidget {
  const ProductCard(
      {this.image,
      this.price,
      this.isFavourite,
      this.name,
      this.isDiscount,
      this.oldPrice,
      this.productId,
      this.id});
  final String image;
  final String price;
  final bool isFavourite;
  final String name;
  final bool isDiscount;
  final String oldPrice;
  final int productId;
  final int id;

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavourite;

  @override
  void initState() {
    isFavourite = widget.isFavourite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.of(context);
    //final product = controller.proList;
    return BlocBuilder(
      bloc: controller,
      builder: (context, state) => state is HomeLoading
          ? CircularProgressIndicator()
          : Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetails(productId: widget.id,)));
                  },
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(children: [
                              Image.network(
                                widget.image,
                                height: 180,
                                width: 150,
                                // fit: BoxFit.cover,
                              ),
                            ]),
                            Container(
                              child: Text(
                                'Discount',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(250, 255, 116, 102)),
                              ),
                              padding: EdgeInsets.all(.8),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 2),
                              child: Text(
                                widget.name,
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.price,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                if (widget.isDiscount)
                                  Text(
                                    widget.oldPrice,
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey),
                                  ),
                                Spacer(),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 20,
                  child:
                IconButton(
                  icon: CircleAvatar(
                    child: widget.isFavourite
                        ? Icon(
                            Icons.favorite,
                            size: 20,
                            color: Color.fromARGB(250, 255, 116, 102),
                          )
                        : Icon(
                            Icons.favorite_border,
                            size: 20,
                            color: Colors.white,
                          ),
                    backgroundColor: Color.fromARGB(250, 253, 231, 200),
                    // Colors.grey[500],
                    maxRadius: 14,
                  ),
                  onPressed: () {
                    FavoriteController().changeFavorite(widget.id);
                    print(widget.id);
                    setState(() {
                      isFavourite = !widget.isFavourite;
                      // if(widget.isFavourite){}
                    });
                    //TODO: Post request to favourites to API
                    // favoriteCubit.changeFavorite(cubit.homeModel.data.products[index].id);
                    // print(cubit.homeModel.data.products[index].id);
                    print(SharedHelper.getToken);
                  },
                ))
              ],
            ),
    );
  }
}
