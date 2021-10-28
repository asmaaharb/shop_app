import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/sharedHelper/shared_helper.dart';
import 'package:tech_shop_app/screens/login/states/controller.dart';

class LoginController extends Cubit<LoginStates> {
  LoginController() : super(LoginInit());

  static LoginController of(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<String> login() async {
    emit(LoginLoading());
    try {
      final response = await Dio().post(
        'https://student.valuxapps.com/api/login',
        data: {
          'email': emailController.text,
          'password': passwordController.text,
        },
      );
      final data = response.data as Map;
      if (data['data']['token'] != null) {
        await SharedHelper.setName(data['data']['name']);
        await SharedHelper.setPhone(data['data']['phone']);
        await SharedHelper.setEmail(data['data']['email']);
        await SharedHelper.setToken(data['data']['token']);

        return 'ok';
      } else {
        emit(LoginInit());
        return 'error';
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
  }
}
