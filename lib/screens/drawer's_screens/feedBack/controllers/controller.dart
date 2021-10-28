import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import "package:tech_shop_app/screens/drawer's_screens/feedBack/states/controller.dart";

class FeedBackController extends Cubit <FeedBackStates>{
  FeedBackController() : super(FeedBackInit());

  static FeedBackController of(context)=> BlocProvider.of(context);

  TextEditingController sEmailController = TextEditingController();
  TextEditingController sPasswordController = TextEditingController();
  TextEditingController sFNameController = TextEditingController();
  TextEditingController sLNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Future<void> feedBack()async{
    if(!formKey.currentState.validate()) return ;
    emit(FeedBackLoading());
    final formData1 = FormData.fromMap({
      'email': sEmailController.text,
      'password': sPasswordController.text,
      'FName':sFNameController,
'LName':sLNameController,
    });
try{
    final response = await Dio().post('https://student.valuxapps.com/api/register',

        data: formData1,

    );

    final data = response.data as Map;
    if(data.containsKey('idToken')) {
      String idToken=data['idToken'];
      final prefs = await SharedPreferences.getInstance();
      prefs.setString("idToken", idToken);
      return 'ok';
    }


    else
      return data['error_warning'];
  }catch(e){
  print(e);

}
    emit(FeedBackInit());
  }


}