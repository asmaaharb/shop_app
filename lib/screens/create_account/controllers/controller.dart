import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tech_shop_app/screens/create_account/states/controller.dart';

class SignUpController extends Cubit<SignUpStates> {
  SignUpController() : super(SignUpInit());

  static SignUpController of(context) => BlocProvider.of(context);

  TextEditingController sEmailController = TextEditingController();
  TextEditingController sPasswordController = TextEditingController();
  TextEditingController sNameController = TextEditingController();
  TextEditingController sPhoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Future<String> signUp() async {
    emit(SignUpLoading());
    try {
      final response = await Dio().post('https://student.valuxapps.com/api/register',
          data: {
            'email': sEmailController.text,
            'password': sPasswordController.text,
            'name': sNameController.text,
            'phone': sPhoneController.text,
          });
      print(response.data);
      final data = response.data as Map;
      if (data["status"]) {
        print(data["data"]['token']);

        String idToken = data["data"]['token'];
        final prefs = await SharedPreferences.getInstance();
        prefs.setString("token", idToken);
        print(response);
        return 'ok';
      } else
        emit(SignUpInit());
      return'error';
    } catch (e) {
      print(e);
    }

  }
}
