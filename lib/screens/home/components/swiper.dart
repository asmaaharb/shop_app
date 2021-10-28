import 'package:flutter/cupertino.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/const/sizes.dart';
import 'package:tech_shop_app/screens/home/controllers/home_controller.dart';
import 'package:tech_shop_app/screens/home/states/controller.dart';

class CardSwiper extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final cubit = HomeController.of(context);

    return BlocBuilder(
      bloc:cubit,
      builder: (context, state) => state is HomeLoading
          ? LinearProgressIndicator()
          :  Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(

          height: sizeFromHeight(3, context),
          child: Swiper(

            itemCount: cubit.homeModel.data.banners.length,

          itemBuilder: (BuildContext context, int index) {
              return Container(

                  height: sizeFromHeight(3, context),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage( cubit.homeModel.data.banners[index].image), fit: BoxFit.cover),
                  ));
            },
            indicatorLayout: PageIndicatorLayout.COLOR,
            autoplay: true,
            pagination: SwiperPagination(
                margin: EdgeInsets.only(top: 150.0,left: 150),
                builder: SwiperCustomPagination(
                    builder: (BuildContext context, index) {
                  return ConstrainedBox(
                    child: DotSwiperPaginationBuilder(
                            color: Color.fromARGB(250, 253, 231, 200),
                            activeColor: Color.fromARGB(250, 255, 116, 102),
                            size: 10.0,
                            activeSize: 20.0)
                        .build(context, index),
                    constraints: BoxConstraints.expand(height: 50.0),
                  );
                })),
            control: SwiperControl(color: Color.fromARGB(250, 255, 116, 102)),
          ),
        ),
      ),
    );
  }
}
