import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/sharedHelper/shared_helper.dart';
import 'package:tech_shop_app/screens/favorite/models/likes_model.dart';
import 'package:tech_shop_app/screens/favorite/states/likes_states.dart';

class FavoriteController extends Cubit<FavoriteStates> {
  FavoriteController() : super(FavoriteInit());

  static FavoriteController of(context) => BlocProvider.of(context);
  FavoriteModel favoriteModel;

  Future<void> changeFavorite(int productId) async {
    emit(FavoriteInit());
    try {
      final response = await Dio().post("https://student.valuxapps.com/api/favorites", data: {'product_id': productId},options: Options(headers: {
        if (SharedHelper.isLogged) 'Authorization': SharedHelper.getToken,
        // 'Content-Type':
      },));
      favoriteModel = FavoriteModel.fromJson(response.data);
      print(response.data);


    } catch (e) {
      print(e);
    }
    emit(FavoriteInit());
  }
}
