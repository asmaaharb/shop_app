import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/sharedHelper/shared_helper.dart';
import 'package:tech_shop_app/screens/productDetails/models/details_model.dart';
import 'package:tech_shop_app/screens/productDetails/states/controller.dart';

class DetailsController extends Cubit<DetailsStates> {
  DetailsController() : super(DetailsInit());


  static DetailsController of(context) => BlocProvider.of(context);
  DetailsModel detailsModel;

  Future<void> getProductData(int productId) async {
    print(productId);
    emit(DetailsLoading());
    try {
      final response = await Dio().get("https://student.valuxapps.com/api/products/$productId", options: Options(headers: {
        if (SharedHelper.isLogged) 'Authorization': SharedHelper.getToken,
        // 'Content-Type':
      },));
      print(response.data);
      detailsModel = DetailsModel.fromJson(response.data);
    } catch (e,s) {
      print(e);
      print(s);
    }
    emit(DetailsInit());
  }


}
