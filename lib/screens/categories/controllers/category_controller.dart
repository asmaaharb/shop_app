import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/sharedHelper/shared_helper.dart';
import 'package:tech_shop_app/screens/categories/models/categories_model.dart';
import 'package:tech_shop_app/screens/categories/states/categories_states.dart';

class CategoriesController extends Cubit<CategoriesStates> {
  CategoriesController() : super(CategoriesInit());

  static CategoriesController of(context) => BlocProvider.of(context);

  CategoriesModel categoriesModel;

  Future<void> getCategoriesData() async {
    emit(CategoriesLoading());
    try {
      final response = await Dio().get("https://student.valuxapps.com/api/categories", options: Options(headers: {
      if (SharedHelper.isLogged) 'Authorization': SharedHelper.getToken,
      // 'Content-Type':
      },));
      categoriesModel = CategoriesModel.fromJson(response.data);
    } catch (e) {
      print(e);
    }
    emit(CategoriesInit());
  }
}
