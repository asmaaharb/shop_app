import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/sharedHelper/shared_helper.dart';
import "package:tech_shop_app/screens/drawer's_screens/questions/models/faqs_model.dart";
import "package:tech_shop_app/screens/drawer's_screens/questions/states/controller.dart";

class FAQSController extends Cubit<FAQSStates> {

  static FAQSController of(context) => BlocProvider.of(context);

  FAQSController() : super(FAQSInit());

  FaqsModel faqsModel ;
  Future<List<FaqsModel>> getData() async {
    emit(FAQSLoading());
    final response = await Dio().get('https://student.valuxapps.com/api/faqs', options:Options(headers: {
      if (SharedHelper.isLogged) 'Authorization': SharedHelper.getToken,
      // 'Content-Type':
    }));

    if (response.statusCode == 200) {

      print('getting data');


       faqsModel = FaqsModel.fromJson(response.data);



    }
    else {
      throw Exception('Failed to load ');
    }
    emit(FAQSInit());

  }

}
