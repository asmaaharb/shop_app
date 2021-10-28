import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/sharedHelper/shared_helper.dart';
import 'package:tech_shop_app/screens/home/models/category_model.dart';
import 'package:tech_shop_app/screens/home/states/category_states.dart';

class CategoryController extends Cubit<CategoryStates> {
  CategoryController() : super(CategoryInit());

  static CategoryController of(context) => BlocProvider.of(context);

  CategoryModel categoryModel;

  Future<void> getCategoryData() async {
    emit(CategoryLoading());
    try {
      final response = await Dio().get("https://student.valuxapps.com/api/categories", options: Options(headers: {
      if (SharedHelper.isLogged) 'Authorization': SharedHelper.getToken,
      // 'Content-Type':
      },));
      categoryModel = CategoryModel.fromJson(response.data);
    } catch (e) {
      print(e);
    }
    emit(CategoryInit());
  }
}
