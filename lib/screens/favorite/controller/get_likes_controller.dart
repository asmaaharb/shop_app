import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/sharedHelper/shared_helper.dart';
import 'package:tech_shop_app/screens/favorite/models/get_likes_model.dart';
import 'package:tech_shop_app/screens/favorite/states/addlikes_states.dart';

class GetFavoriteController extends Cubit<AddFavoriteStates> {
  GetFavoriteController() : super(AddFavoriteInit());


  static GetFavoriteController of(context) => BlocProvider.of(context);
  AddFavModel addFavModel;
  Future<void> getFavorite() async {
    emit(AddFavoriteLoading());
    try {
      final response = await Dio().get(
        'https://student.valuxapps.com/api/favorites',
        options: Options(headers: {
      if (SharedHelper.isLogged) 'Authorization': SharedHelper.getToken,
      // 'Content-Type':
      },)
      );
      addFavModel = AddFavModel.fromJson(response.data);
      print(response.data);
    } catch (e) {
      print(e);
    }
    emit(AddFavoriteInit());
  }

  Future<void> removeFromFavourite(int index) async {
    addFavModel
        .data
        .data
        .removeAt(index);
    emit(AddFavoriteInit());

   // ShowSnackBar.showToast(
   //      msg: 'Deleted Successfully',
   //      toastLength: Toast.LENGTH_SHORT,
   //      gravity: ToastGravity.BOTTOM,
   //      timeInSecForIosWeb: 1,
   //      backgroundColor: Colors.red,
   //      textColor: Colors.white,
   //      fontSize: 20.0);
  }
}