import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/sharedHelper/shared_helper.dart';
import 'package:tech_shop_app/screens/categories/models/categories_model.dart';
import 'package:tech_shop_app/screens/categories/states/categories_states.dart';
import 'package:tech_shop_app/screens/categoriesProducts/models/categories_pro_model.dart';
import 'package:tech_shop_app/screens/categoriesProducts/states/categories_pro_states.dart';

class CategoriesController extends Cubit<CategoriesProductsStates> {
  CategoriesController() : super(CategoriesProductsInit());

  static CategoriesController of(context) => BlocProvider.of(context);

  CategoriesProductsModel categoriesProductsModel;

  Future<void> getCategoriesData(int catId) async {
    emit(CategoriesProductsLoading());
    try {
      final response = await Dio().get("https://student.valuxapps.com/api/categories/$catId", options: Options(headers: {
      if (SharedHelper.isLogged) 'Authorization': SharedHelper.getToken,
      // 'Content-Type':
      },));
      categoriesProductsModel = CategoriesProductsModel.fromJson(response.data);
    } catch (e) {
      print(e);
    }
    emit(CategoriesProductsInit());
  }
}
