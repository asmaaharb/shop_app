import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/sharedHelper/shared_helper.dart';
import 'package:tech_shop_app/screens/favorite/models/likes_model.dart';
import 'package:tech_shop_app/screens/home/models/home_model.dart';
import 'package:tech_shop_app/screens/home/states/controller.dart';

class HomeController extends Cubit<HomeStates> {
  HomeController() : super(HomeInit());

  static HomeController of(context) => BlocProvider.of(context);
  FavoriteModel favoriteModel;
  HomeModel homeModel;
  Map<int, bool> favorites = {};

  Future<void> getData() async {
    emit(HomeLoading());
    try {
      final response = await Dio().get("https://student.valuxapps.com/api/home", options: Options(headers: {
        if (SharedHelper.isLogged) 'Authorization': SharedHelper.getToken,
        // 'Content-Type':
      },));
      homeModel = HomeModel.fromJson(response.data);
      homeModel.data.products.forEach((element) {
        favorites.addAll({element.id: element.inFavorites});
      });
      print(favorites.toString());
    } catch (e) {
      print(e);
    }
    emit(HomeInit());
  }


}
