import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/sharedHelper/shared_helper.dart';
import 'package:tech_shop_app/screens/search/model/search_model.dart';
import 'package:tech_shop_app/screens/search/states/controller.dart';
class SearchController extends Cubit<SearchStates> {
  SearchController() : super(SearchInit());

  static SearchController of(context) => BlocProvider.of(context);
 SearchModel searchModel ;
  TextEditingController searchController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<SearchModel> search()async{
    emit(SearchLoading());
    try {
      final response = await Dio().post(
        'https://student.valuxapps.com/api/products/search', data: {
        'text': searchController.text,
      },options: Options(headers: {
        if (SharedHelper.isLogged) 'Authorization': SharedHelper.getToken,
        // 'Content-Type':
      },));
      final resp = response.data;
      print(resp);

    }
    catch(e,s) {
      print(s);
      print(e);
    }
    emit(SearchInit());

  }}

