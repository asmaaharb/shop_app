import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/const/sizes.dart';
import 'package:tech_shop_app/screens/productDetails/states/controller.dart';
import 'package:tech_shop_app/widgets/button.dart';
import 'components/rating.dart';
import 'controllers/product_details_controller.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails(
      {
      this.productId,
      });

  final int productId;


  @override
  Widget build(BuildContext context) {
  // final controller= DetailsController.of(context).detailsModel.data;
    return BlocProvider(
      create: (context)=>DetailsController()..getProductData(this.productId),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios, color: Colors.black)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite,
                color: Color.fromARGB(250, 255, 116, 102),
              ),
            ),
          ],
        ),
          body: BlocBuilder<DetailsController, DetailsStates>(
        builder: (context, state) => state is DetailsLoading
            ? Center(
                child: CircularProgressIndicator( color: Color.fromARGB(250, 255, 116, 102),),
              )
            : Column(
               children: <Widget>[
                    Text(
                        DetailsController.of(context).detailsModel.data.name,
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                        width: sizeFromWidth(2.2, context),
                        height: sizeFromHeight(2.5, context),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(DetailsController.of(context).detailsModel.data.image), fit: BoxFit.cover),
                        ),
                      ),

                 Container(
                          color: Colors.white,
                          height: 600.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 100, top: 40),
                                    child: Text(
                                      DetailsController.of(context).detailsModel.data.price.toString(),
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(250, 255, 116, 102),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              Rating(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 20, bottom: 45),
                                child: Text(
                                  DetailsController.of(context).detailsModel.data.description,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 20.0, left: 5),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: sizeFromWidth(8, context),
                                        height: sizeFromWidth(8, context),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Icon(
                                          Icons.shopping_cart,
                                          color:
                                              Color.fromARGB(250, 255, 116, 102),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: sizeFromWidth(1.2, context),
                                    child: CustomButton(
                                      buttonTitle: "Buy Now",
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )



                ],
              ),

    ))  );
  }
}
