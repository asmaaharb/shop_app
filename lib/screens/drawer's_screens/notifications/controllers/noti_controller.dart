import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_shop_app/core/sharedHelper/shared_helper.dart';
import "package:tech_shop_app/screens/drawer's_screens/notifications/models/noti_model.dart";
import "package:tech_shop_app/screens/drawer's_screens/notifications/states/controller.dart";

class NotificationController extends Cubit<NotificationStates> {

  static NotificationController of(context) => BlocProvider.of(context);

  NotificationController() : super(NotificationInit());

  NotificationsModel notificationModel ;
  Future<List<NotificationsModel>> getData() async {
    emit(NotificationLoading());
    final response = await Dio().get('https://student.valuxapps.com/api/notifications', options:Options(headers: {
      if (SharedHelper.isLogged) 'Authorization': SharedHelper.getToken,
      // 'Content-Type':
    }));

    if (response.statusCode == 200) {

      print('getting data');


       notificationModel = NotificationsModel.fromJson(response.data);



    }
    else {
      throw Exception('Failed to load ');
    }
    emit(NotificationInit());

  }

}
